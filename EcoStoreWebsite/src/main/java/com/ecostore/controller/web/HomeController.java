package com.ecostore.controller.web;

import com.ecostore.model.MenuModel;
import com.ecostore.service.IMenuService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/trang-chu")
public class HomeController extends HttpServlet {
    @Inject
    private IMenuService menuService;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<MenuModel> menuTop = menuService.findAllByMenuTypeId(1,1);
        List<MenuModel> menuBottom = menuService.findAllByMenuTypeId(2,1);
        request.setAttribute("menuTop",menuTop);
        request.setAttribute("menuBottom",menuBottom);
        RequestDispatcher rd = request.getRequestDispatcher("views/web/index.jsp");
        rd.forward(request, response);
    }
}
