package com.ecostore.controller.web;

import com.ecostore.model.AboutModel;
import com.ecostore.model.CategoryModel;
import com.ecostore.model.MenuModel;
import com.ecostore.service.IAboutService;
import com.ecostore.service.ICategoryService;
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

@WebServlet(urlPatterns = "/gioi-thieu")
public class AboutController extends HttpServlet {
    @Inject
    private IAboutService aboutService;
    @Inject
    private IMenuService menuService;
    @Inject
    private ICategoryService categoryService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<MenuModel> menuTop = menuService.findAllByMenuTypeId(1,1);
        List<MenuModel> menuBottom = menuService.findAllByMenuTypeId(2,1);
        request.setAttribute("menuTop", menuTop);
        request.setAttribute("menuBottom", menuBottom);
        AboutModel model = aboutService.findOneByStatus(1);
        request.setAttribute("model", model);
        List<CategoryModel> categoryModels = categoryService.findAll();
        request.setAttribute("category", categoryModels);
        RequestDispatcher rd = request.getRequestDispatcher("views/web/about.jsp");
        rd.forward(request, response);
    }
}
