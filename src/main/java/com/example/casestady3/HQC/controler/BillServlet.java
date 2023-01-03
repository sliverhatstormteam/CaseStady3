package com.example.casestady3.HQC.controler;

import com.example.casestady3.HQC.DataBaseConnection.BillDetailDAO;
import com.example.casestady3.HQC.DataBaseConnection.KindDAO;
import com.example.casestady3.HQC.DataBaseConnection.billDAO;
import com.example.casestady3.HQC.DataBaseConnection.productDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (urlPatterns = "/bill")
public class BillServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("kinds", KindDAO.getAll());
        req.setAttribute("products", productDAO.getAll());
        req.setAttribute("billinfos", billDAO.getBillInfo());
        req.setAttribute("billDetails", BillDetailDAO.getBillDetail());
        RequestDispatcher dispatcher = req.getRequestDispatcher("/HQC/VIEW/quanLiHoaDonJSP.jsp");
        dispatcher.forward(req, resp);
    }
}
