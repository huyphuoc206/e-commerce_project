package com.ecostore.controller.web;

import com.ecostore.model.AboutModel;
import com.ecostore.service.ILayoutAttributeService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/thanh-toan")
public class CheckoutController extends HttpServlet {
    @Inject
    private ILayoutAttributeService layoutAttributeService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        layoutAttributeService.setHeaderWeb(request);
        layoutAttributeService.setFooterWeb(request);
        RequestDispatcher rd = request.getRequestDispatcher("views/web/checkout.jsp");
        rd.forward(request, response);
    }
}
