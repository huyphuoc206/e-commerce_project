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

@WebServlet(urlPatterns = "/san-pham")
public class ProductController extends HttpServlet {
    @Inject
    private ILayoutAttributeService layoutAttributeService;
    @Inject
    private IProductService productService;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        layoutAttributeService.setHeaderWeb(request);
        layoutAttributeService.setFooterWeb(request);
        String code = request.getParameter("code");
        String url = "";
        if (code != null){
            List<ProductModel> products = productService.findAllByCategoryCode(code);
            request.setAttribute("products", products);
            request.setAttribute("categoryname", products.get(0).getCategory().getName());
            url = "views/web/product.jsp";
        } else{
           url = "views/web/index.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);
    }
}
