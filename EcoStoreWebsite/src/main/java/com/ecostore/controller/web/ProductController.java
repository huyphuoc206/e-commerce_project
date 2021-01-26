package com.ecostore.controller.web;

import com.ecostore.constant.SystemConstant;
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
            if(request.getParameter("page") == null) model.setPage(1);
            IPageble pageble = new PageRequest(model.getPage(), SystemConstant.LIMIT_ITEMS, new Sorter(model.getSortName(), model.getSortBy()));
            String supplier = request.getParameter("supplier");
            List<ProductModel> products;
            if (supplier != null) {
                products = productService.findAllByCategoryAndSupplierCode(code, supplier, pageble);
                model.setTotalItems(productService.getTotalItemsByCategoryAndSupplierCode(code, supplier));
                request.setAttribute("supplierCode", supplier);
            } else {
                products = productService.findAllByCategoryCode(code, pageble);
                model.setTotalItems(productService.getTotalItemsByCategoryCode(code));
            }
            List<SupplierModel> suppliers = supplierService.findAllByCategoryCode(code);
            model.setList(products);
            model.setTotalPage((int) Math.ceil(model.getTotalItems() * 1.0 / pageble.getLimit()));

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
