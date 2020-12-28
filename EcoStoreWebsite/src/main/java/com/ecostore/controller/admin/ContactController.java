package com.ecostore.controller.admin;


import com.ecostore.model.ContactModel;
import com.ecostore.model.MenuModel;

import com.ecostore.service.IContactService;
import com.ecostore.service.IMenuService;
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

@WebServlet(urlPatterns = "/quan-tri/lien-he")
public class ContactController extends HttpServlet {
    @Inject
    private IMenuService menuService;
    @Inject
    private IContactService contactService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<MenuModel> menuLeft = menuService.findAllByMenuTypeId(3, 1);
        request.setAttribute("menuLeft", menuLeft);
        String url = "";
        String id = request.getParameter("id");
        if (id != null) {
            ContactModel contactModel = contactService.findOneById(Long.parseLong(id));
            request.setAttribute("contactModel", contactModel);
            url = "../views/admin/editcontact.jsp";
        } else {
            MessageUtil.showMessage(request);
            List<ContactModel> contacts = contactService.findAll();
            request.setAttribute("contacts", contacts);
            url = "../views/admin/contact.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);
    }
}
