package com.ecostore.controller.web;

import com.ecostore.model.UserModel;
import com.ecostore.service.ILayoutAttributeService;
import com.ecostore.service.IUserService;
import com.ecostore.utils.Check24Hours;
import com.ecostore.utils.MessageUtil;
import com.sun.org.apache.xalan.internal.xsltc.trax.TemplatesHandlerImpl;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;

@WebServlet(urlPatterns = "/mat-khau-moi")
public class NewPassController extends HttpServlet {
    @Inject
    private ILayoutAttributeService layoutAttributeService;
    @Inject
    private IUserService userService;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        layoutAttributeService.setHeaderWeb(request);
        layoutAttributeService.setFooterWeb(request);
        String email = request.getParameter("email");
        String key = request.getParameter("key");
        UserModel user = userService.findOneByEmail(email);
        String url = "";
        if ( key.equals(user.getKeycode()) && Check24Hours.check(user)){
            request.setAttribute("user", user);
            url = "views/web/newpass.jsp";
        } else {
            url = "/quen-mat-khau?message=email_change_pass_expired&alert=danger";
        }
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request,response);

      }
}
