package com.ecostore.controller.web;

import com.ecostore.service.ILayoutAttributeService;
import com.ecostore.service.IUserService;
import com.ecostore.utils.MessageUtil;
import com.ecostore.utils.SessionUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/dang-ky")
public class RegisterController extends HttpServlet {

    @Inject
    private ILayoutAttributeService layoutAttributeService;
    @Inject
    private IUserService userService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        layoutAttributeService.setHeaderWeb(request);
        layoutAttributeService.setFooterWeb(request);
        // Neu da dang nhap ma vao dang ky thi chuyen ve trang cap nhat thong tin
        if (SessionUtil.getInstance().getValue(request, "USERMODEL") != null) {
            response.sendRedirect(request.getContextPath() + "/trang-chu");
        } else {
            MessageUtil.showMessage(request);
            RequestDispatcher rd = request.getRequestDispatcher("views/web/register.jsp");
            rd.forward(request, response);
        }
    }
}
