package com.ecostore.controller.web;

import com.ecostore.model.ProductModel;
import com.ecostore.model.SupplierModel;
import com.ecostore.paging.IPageble;
import com.ecostore.paging.PageRequest;
import com.ecostore.service.ILayoutAttributeService;
import com.ecostore.service.IProductService;
import com.ecostore.service.ISupplierService;
import com.ecostore.sort.Sorter;
import com.ecostore.utils.FormUtil;

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
    @Inject
    private ISupplierService supplierService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        layoutAttributeService.setHeaderWeb(request);
        layoutAttributeService.setFooterWeb(request);

        ProductModel model = FormUtil.toModel(ProductModel.class, request);
        String code = request.getParameter("code");
        if (code != null) {
            IPageble pageble = new PageRequest(model.getPage(), 15, new Sorter(model.getSortName(), model.getSortBy()));
            List<ProductModel> products = productService.findAllByCategoryCode(code, pageble);
            List<SupplierModel> suppliers = supplierService.findAllByCategoryCode(code);
            model.setList(products);
            model.setTotalItems(productService.getTotalItems());
            model.setTotalPage((int) Math.ceil(model.getTotalItems() / pageble.getLimit()));

            request.setAttribute("model", model);
            request.setAttribute("suppliers", suppliers);
            request.setAttribute("code", code);
            if (!products.isEmpty())
                request.setAttribute("cname", products.get(0).getCategory().getName());
            RequestDispatcher rd = request.getRequestDispatcher("views/web/product.jsp");
            rd.forward(request, response);
        } else
            response.sendRedirect(request.getContextPath() + "/trang-chu");
    }
}
