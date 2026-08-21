package com.bank.bank_transaction.controller;


import com.bank.bank_transaction.until.DeadlineUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "courseController", value = "/course")
public class CourseController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (!DeadlineUtil.checkDeadline()){
            System.out.println("----------hết quyền sử dụng-------------------");
            String viewName = "403.jsp";
            req.getRequestDispatcher(viewName).forward(req,resp);
        }else {
            int module = Integer.parseInt(req.getParameter("module"));
            int session = Integer.parseInt(req.getParameter("session"));
            String fileName = req.getParameter("fileName");
            String viewName = "/course/"+"/module"+module+"/session"+session+"/"+fileName+".jsp";
            req.getRequestDispatcher(viewName).forward(req,resp);
        }

    }
}
