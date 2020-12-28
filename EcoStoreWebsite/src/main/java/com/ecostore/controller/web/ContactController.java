package com.ecostore.controller.web;

import com.ecostore.model.*;
import com.ecostore.service.*;
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

@WebServlet(urlPatterns = "/lien-he")
public class ContactController extends HttpServlet {
    @Inject
    private IContactService contactService;
    @Inject
    private IMenuService menuService;
    @Inject
    private ICategoryService categoryService;
    @Inject
    private IInformationService informationService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<MenuModel> menuTop = menuService.findAllByMenuTypeId(1, 1);
        List<MenuModel> menuBottom = menuService.findAllByMenuTypeId(2, 1);
        request.setAttribute("menuTop", menuTop);
        request.setAttribute("menuBottom", menuBottom);
        List<CategoryModel> categories = categoryService.findAllByStatus(1);
        InformationModel information = informationService.findOneByStatus(1);
        ContactModel model = contactService.findOneById(1);
        request.setAttribute("model", model);
        request.setAttribute("categories", categories);
        request.setAttribute("information", information);
        MessageUtil.showMessage(request);
        RequestDispatcher rd = request.getRequestDispatcher("views/web/contact.jsp");
        rd.forward(request, response);
    }
}
