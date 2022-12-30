package com.example.casestady3.HQC;

import com.example.casestady3.HQC.DataBaseConnection.DAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet(urlPatterns = "/deleteProduct")
public class deleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        DAO.delete(id);
        resp.sendRedirect("/crud");
    }
}

