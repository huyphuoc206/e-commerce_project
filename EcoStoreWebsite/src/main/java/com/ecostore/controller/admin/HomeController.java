package com.ecostore.controller.admin;

import com.ecostore.service.ILayoutAttributeService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/quan-tri/trang-chu")
public class HomeController extends HttpServlet {
    @Inject
    private ILayoutAttributeService layoutAttributeService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        layoutAttributeService.setMenuLeftAdmin(request);
        RequestDispatcher rd = request.getRequestDispatcher("../views/admin/home.jsp");
        rd.forward(request, response);
    }
}
