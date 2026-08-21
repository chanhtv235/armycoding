package com.bank.bank_transaction.controller;

import com.bank.bank_transaction.until.DeadlineUtil;

import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebFilter(filterName = "FilterUTF-8",value = "/*")
public class FilterUTF8 implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        if (!DeadlineUtil.checkDeadline()){
            System.out.println("----------hết quyền sử dụng-------------------");
            String viewName = "/403.jsp";
            request.getRequestDispatcher(viewName).forward(request,response);
        }else {
            chain.doFilter(request, response);
        }
    }
}
