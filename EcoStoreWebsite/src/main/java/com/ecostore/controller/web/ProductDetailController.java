package com.ecostore.controller.web;

import com.ecostore.model.CommentModel;
import com.ecostore.model.ProductModel;
import com.ecostore.service.ICommentService;
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

@WebServlet(urlPatterns = "/chi-tiet-san-pham")
public class ProductDetailController extends HttpServlet {
    @Inject
    private ILayoutAttributeService layoutAttributeService;
    @Inject
    private IProductService productService;
    @Inject
    private ICommentService commentService;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        layoutAttributeService. setHeaderWeb(request);
        layoutAttributeService.setFooterWeb(request);
        String id =  request.getParameter("id");

        String url = "";
        String code = request.getParameter("code");
        if(id != null) {
            ProductModel product = productService.findOneById(Long.parseLong(id));
            request.setAttribute("product", product);
//            List<CommentModel> comments = commentService.findAllByProductId(Long.parseLong(id));
//            request.setAttribute("comments", comments);
//            List<ProductModel> products = productService.findAllByCategoryCode(code);
//            request.setAttribute("products", products);

            url = "views/web/single.jsp";
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
        } else{

            response.sendRedirect(request.getContextPath() + "/trang-chu");

        }
    }
}
