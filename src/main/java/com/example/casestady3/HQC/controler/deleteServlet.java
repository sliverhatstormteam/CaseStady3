package com.example.casestady3.HQC.controler;

import com.example.casestady3.HQC.DataBaseConnection.productDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet(urlPatterns = "/deleteProduct")
public class deleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        productDAO.delete(id);
        resp.sendRedirect("/crud");
    }
}

