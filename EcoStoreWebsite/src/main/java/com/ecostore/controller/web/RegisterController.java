package com.ecostore.controller.web;

import com.ecostore.model.InformationModel;
import com.ecostore.model.MenuModel;
import com.ecostore.service.IInformationService;
import com.ecostore.service.IMenuService;
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
import java.util.List;

@WebServlet(urlPatterns = "/dang-ky")
public class RegisterController extends HttpServlet {
    @Inject
    private IMenuService menuService;
    @Inject
    private IInformationService informationService;
    @Inject
    private IUserService userService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<MenuModel> menuTop = menuService.findAllByMenuTypeId(1, 1);
        List<MenuModel> menuBottom = menuService.findAllByMenuTypeId(2, 1);
        InformationModel information = informationService.findOneByStatus(1);
        request.setAttribute("menuTop", menuTop);
        request.setAttribute("menuBottom", menuBottom);
        request.setAttribute("information", information);
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
