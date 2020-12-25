package com.ecostore.controller.web;

import com.ecostore.model.CategoryModel;
import com.ecostore.model.MenuModel;
import com.ecostore.model.PrivacyPolicyModel;
import com.ecostore.service.ICategoryService;
import com.ecostore.service.IMenuService;
import com.ecostore.service.IPrivacyPolicyService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/chinh-sach-bao-mat")
public class PrivacyPolicyController extends HttpServlet {
    @Inject
    private IPrivacyPolicyService privacyPolicyService;
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
        PrivacyPolicyModel model = privacyPolicyService.findOneByStatus(1);
        request.setAttribute("model", model);
        List<CategoryModel> categoryModels = categoryService.findAll();
        request.setAttribute("category", categoryModels);
        RequestDispatcher rd = request.getRequestDispatcher("views/web/privacy.jsp");
        rd.forward(request, response);
    }
}
