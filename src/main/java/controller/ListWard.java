package controller;

import dao.WardDao;
import model.Ward;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/listWard")
public class ListWard extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");

        int districtId = Integer.parseInt(req.getParameter("districtId").toString());
        WardDao wardDao = new WardDao();
        List<Ward> list = new ArrayList<Ward>();
        list = wardDao.listWard(districtId);
        PrintWriter out = resp.getWriter();
        for (Ward ward:list){
            out.println("<option value=\""+ward.getId()+"\">"+ward.getAddress()+"</option>");
//            System.out.println(ward.getId()+"-"+ward.getAddress());
        }
    }
}
