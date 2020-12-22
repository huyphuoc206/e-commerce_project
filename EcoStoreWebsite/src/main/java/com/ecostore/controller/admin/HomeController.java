package com.ecostore.controller.admin;

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

@WebServlet(urlPatterns = "/quan-tri/trang-chu")
public class HomeController extends HttpServlet {
    @Inject
    private IMenuService menuService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<MenuModel> menuLeft = menuService.findAllByMenuTypeId(3,1);
        request.setAttribute("menuLeft", menuLeft);
        RequestDispatcher rd = request.getRequestDispatcher("../views/admin/home.jsp");
        rd.forward(request, response);
    }
}
