package com.ecostore.controller.web;

import com.ecostore.service.ILayoutAttributeService;
import com.ecostore.service.IUserService;
import com.ecostore.utils.MessageUtil;


import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Timestamp;

@WebServlet(urlPatterns = "/quen-mat-khau")
public class ForgotPassController extends HttpServlet {
    @Inject
    private ILayoutAttributeService layoutAttributeService;
//    @Inject
//    private IUserService userService;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            layoutAttributeService.setHeaderWeb(request);
            layoutAttributeService.setFooterWeb(request);
            MessageUtil.showMessage(request);
            RequestDispatcher rd = request.getRequestDispatcher("views/web/forgotpass.jsp");
            rd.forward(request,response);

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
