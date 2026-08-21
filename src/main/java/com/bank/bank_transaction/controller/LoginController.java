package com.bank.bank_transaction.controller;

import com.bank.bank_transaction.model.Account;
import com.bank.bank_transaction.service.AccountService;
import com.bank.bank_transaction.service.IAccountService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "loginController", value = "/login")
public class LoginController extends HttpServlet {
    private IAccountService accountService = new AccountService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("login.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username= req.getParameter("username");
        String password= req.getParameter("password");
        Account account = accountService.findByUsernameAndPassword(username,password);
        if (account !=null){
            HttpSession session = req.getSession();
            session.setAttribute("account", account);
            req.setAttribute("mess","Login success");
            req.getRequestDispatcher("index.jsp").forward(req,resp);
        }else {
            req.setAttribute("mess","Login fail");
            req.getRequestDispatcher("login.jsp").forward(req,resp);
        }

    }
}
