package com.ecostore.controller.web;

import com.ecostore.model.PrivacyPolicyModel;
import com.ecostore.model.TermsModel;
import com.ecostore.service.ITermsService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/dieu-khoan-su-dung")
public class TermsController extends HttpServlet {
    @Inject
    private ITermsService termsService;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TermsModel model = termsService.findOneByStatus(1);
        request.setAttribute("model",model);
        RequestDispatcher rd = request.getRequestDispatcher("views/web/terms.jsp");
        rd.forward(request, response);
    }
}
