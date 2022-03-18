package controller.staff;

import dao.ShipperDao;
import model.Shipper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/staff-changePass")
public class ChangePass extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        req.getRequestDispatcher("WEB-INF/jsp/staff-ship/staff-changePass.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String oldPass = req.getParameter("oldPass");
        String newPass = req.getParameter("newPass");
        String confirmNewPass =req.getParameter("confirmNewPass");
        if (newPass.equals(confirmNewPass)){
            HttpSession session = req.getSession();
            Shipper shipper = (Shipper) session.getAttribute("shipper");
            int id = shipper.getId();
            ShipperDao shipperDao = new ShipperDao();
            if (shipperDao.checkPass(id, oldPass)){
                if (shipperDao.newPass(id, newPass)){
                    req.setAttribute("type", "success");
                    req.setAttribute("message", "Đổi mật khẩu thành công");
                    req.getRequestDispatcher("WEB-INF/jsp/staff-ship/staff-changePass.jsp").forward(req, resp);
                } else {
                    req.setAttribute("type", "info");
                    req.setAttribute("message", "Đổi mật khẩu thất bại");
                    req.getRequestDispatcher("WEB-INF/jsp/staff-ship/staff-changePass.jsp").forward(req, resp);
                }
            } else {
                req.setAttribute("type", "error");
                req.setAttribute("message", "Mật khẩu đã nhập sai");
                req.setAttribute("oldPass", oldPass);
                req.setAttribute("newPass", newPass);
                req.getRequestDispatcher("WEB-INF/jsp/staff-ship/staff-changePass.jsp").forward(req, resp);
            }
        } else {
            req.setAttribute("type", "warning");
            req.setAttribute("message", "Xác nhận mật khẩu không đúng");
            req.setAttribute("oldPass", oldPass);
            req.setAttribute("newPass", newPass);
            req.getRequestDispatcher("WEB-INF/jsp/staff-ship/staff-changePass.jsp").forward(req, resp);
        }


    }
}
