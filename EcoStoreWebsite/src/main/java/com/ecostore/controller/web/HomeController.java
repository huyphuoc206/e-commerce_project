package com.ecostore.controller.web;

import com.ecostore.model.ProductModel;
import com.ecostore.service.ILayoutAttributeService;
import com.ecostore.service.IProductService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/trang-chu")
public class HomeController extends HttpServlet {
    @Inject
    private ILayoutAttributeService layoutAttributeService;
    @Inject
    private IProductService productService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        layoutAttributeService.setHeaderWeb(request);
        layoutAttributeService.setFooterWeb(request);
        List<ProductModel> productNewList = productService.findAllSortByCreateddate();
        List<ProductModel> productDiscountList = productService.findAllSortByDiscount();

        request.setAttribute("productNewList", productNewList);
        request.setAttribute("productDiscountList", productDiscountList);

        RequestDispatcher rd = request.getRequestDispatcher("views/web/index.jsp");
        rd.forward(request, response);
    }
}
