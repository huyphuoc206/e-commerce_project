package com.ecostore.controller.web;

import com.ecostore.model.ProductModel;
import com.ecostore.service.ILayoutAttributeService;
import com.ecostore.service.IProductService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/chi-tiet-san-pham")
public class ProductDetailController {
    @Inject
    private ILayoutAttributeService layoutAttributeService;
    @Inject
    private IProductService productService;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        layoutAttributeService.setHeaderWeb(request);
        layoutAttributeService.setFooterWeb(request);
        String id =  request.getParameter("id");
        String url = "";
        if (id != null){
            ProductModel product =  productService.findOneById(Long.parseLong(id));
        }
    }
}
