package com.ecostore.controller.admin;

import com.ecostore.model.MenuModel;
import com.ecostore.model.MenuTypeModel;
import com.ecostore.service.IMenuService;
import com.ecostore.service.IMenuTypeService;
import com.ecostore.utils.MessageUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/quan-tri/menu")
public class MenuController extends HttpServlet {
    @Inject
    private IMenuService menuService;
    @Inject
    private IMenuTypeService menuTypeService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<MenuModel> menuLeft = menuService.findAllByMenuTypeId(3, 1);
        request.setAttribute("menuLeft", menuLeft);
        String url = "";
        String id = request.getParameter("id");
        if (id != null) {
            MenuModel menuModel = menuService.findAllById(Long.parseLong(id));
            request.setAttribute("menuModel", menuModel);
            List<MenuTypeModel> menuTypeModels = menuTypeService.fillAll();
            request.setAttribute("menuTypeModels", menuTypeModels);
            url = "../views/admin/editmenu.jsp";
        } else {
            MessageUtil.showMessage(request);
            List<MenuModel> menus = menuService.findAll();
            request.setAttribute("menus", menus);
            List<MenuTypeModel> menuTypeModels = menuTypeService.fillAll();
            request.setAttribute("menuTypeModels", menuTypeModels);
            url = "../views/admin/menu.jsp";
        }

        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);
    }
}
