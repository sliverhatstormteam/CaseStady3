package com.example.casestady3.HQC;

import com.example.casestady3.HQC.DataBaseConnection.DAO;
import com.example.casestady3.HQC.model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/editProduct")
public class editServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Product product = DAO.findById(id);
        req.setAttribute("productEdit", product);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/VIEW/crudJSP.jsp");
        dispatcher.forward(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int productID = Integer.parseInt(req.getParameter("productID"));
        String brand = req.getParameter("brand");
        String productName = req.getParameter("productName");
        String img = req.getParameter("img");
        double price = Double.parseDouble(req.getParameter("price"));
        int kind = Integer.parseInt(req.getParameter("kind"));
        String decscription = req.getParameter("description");
        String color = req.getParameter("color");

        DAO.edit(new Product(productID,brand, productName, img, price,kind,decscription,color));
        resp.sendRedirect("/crud");

    }
}