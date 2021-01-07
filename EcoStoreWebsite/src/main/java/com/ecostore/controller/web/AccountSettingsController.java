package com.ecostore.controller.web;

import com.ecostore.model.UserModel;
import com.ecostore.service.ILayoutAttributeService;
import com.ecostore.service.IUserService;
import com.ecostore.utils.SessionUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/chinh-sua-thong-tin")
public class AccountSettingsController extends HttpServlet {
    @Inject
    private ILayoutAttributeService layoutAttributeService;
    @Inject
    private IUserService userService;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        layoutAttributeService.setHeaderWeb(request);
        layoutAttributeService.setFooterWeb(request);
        UserModel user = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
        String url= "";
        if (user != null) {
            request.setAttribute("user", user);
            url = "views/web/accountsettings.jsp";
        } else {
            url = "/dang-nhap?message=not_login&alert=danger";
        }
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);
    }
}
