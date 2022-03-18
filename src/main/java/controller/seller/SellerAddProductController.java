package controller.seller;

import dao.ProductDao;
import model.ImageProduct;
import model.Product;
import model.Properties;
import model.Value;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/add-product")
// thêm mới sản phẩm
public class SellerAddProductController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession();

        int categoryId = Integer.parseInt(req.getParameter("categoryId").toString());
        String nameProduct = req.getParameter("nameProduct").toString();
        int shopId = Integer.parseInt(session.getAttribute("shopId").toString());
        int quantityImage = Integer.parseInt(req.getParameter("quantityImage").toString());
        List<ImageProduct> list = new ArrayList<>();
        for (int i = 1; i<=quantityImage; i++){
            ImageProduct imageProduct = new ImageProduct();
            imageProduct.setImage(req.getParameter("nameImage"+i));
            list.add(imageProduct);
        }
        int numberProperties = Integer.parseInt(req.getParameter("numberProperties"));
        String decription = req.getParameter("decription").toString();
        int price=0, number=0;

        List<Properties> listProperties = new ArrayList<Properties>();
        if (numberProperties > 0) {
            for (int i = 1; i<=numberProperties; i++) {
                List<Value> listValue = new ArrayList<Value>();
                Properties properties = new Properties();
                String nameProperties = req.getParameter("nameProperties"+i).toString();
                int numberValue = Integer.parseInt(req.getParameter("properties"+i).toString());
                for (int j = 1; j<=numberValue; j++){
                    Value value = new Value();
                    String nameValueProperties = req.getParameter("value"+i+""+j).toString();
                    int priceValueProties = Integer.parseInt(req.getParameter("price"+i+""+j).toString());
                    int numberValueProperties = Integer.parseInt(req.getParameter("number"+i+""+j).toString());
                    value.setName(nameValueProperties);
                    value.setPrice(priceValueProties);
                    value.setNumber(numberValueProperties);
                    listValue.add(value);
                    number+=numberValueProperties;
                }
                properties.setName(nameProperties);
                properties.setValue(listValue);
                listProperties.add(properties);
            }
            for(Properties properties:listProperties){
                Value value = new Value();
                value = (Value) properties.getValue().get(0);
                price += value.getPrice();
            }
            number/=numberProperties;
        } else {
            price = Integer.parseInt(req.getParameter("price").toString());
            number = Integer.parseInt(req.getParameter("number").toString());
        }

        Product product = new Product();
        product.setCategoryId(categoryId);
        product.setName(nameProduct);
        product.setShopId(shopId);
        product.setDecription(decription);
        product.setPrice(price);
        product.setNumber(number);
        product.setImage(list);
        product.setProperties(listProperties);

        ProductDao productDao = new ProductDao();

        if (productDao.newProduct(product)){
            resp.sendRedirect("seller-all-product");
        } else {
            resp.sendRedirect("seller-addproduct");
        }

    }
}
