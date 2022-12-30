package com.example.casestady3.HQC;

import com.example.casestady3.HQC.DataBaseConnection.DAO;
import com.example.casestady3.HQC.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/crud")

public class crudSERVLET extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("products", DAO.getAll());
        RequestDispatcher dispatcher = req.getRequestDispatcher("/HQC/VIEW/crudJSP.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        int productID = Integer.parseInt(req.getParameter("productID"));
        String brand = req.getParameter("brand");
        String name = req.getParameter("productName");
        String img = req.getParameter("img");
        double price = Double.parseDouble(req.getParameter("price"));
        int kindID = Integer.parseInt(req.getParameter("kindID"));
        String decscription = req.getParameter("decscription");
        String color = req.getParameter("color");
        DAO.save(new Product(brand, name, img, price,kindID,decscription,color));
        resp.sendRedirect("/crud");
    }
}
