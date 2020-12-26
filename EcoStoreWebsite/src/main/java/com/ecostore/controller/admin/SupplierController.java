package com.ecostore.controller.admin;

import com.ecostore.model.MenuModel;
import com.ecostore.model.SupplierModel;
import com.ecostore.service.IMenuService;
import com.ecostore.service.ISupplierService;
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


@WebServlet(urlPatterns = "/quan-tri/nha-san-xuat")
public class SupplierController extends HttpServlet {
    @Inject
    private IMenuService menuService;
    @Inject
    private ISupplierService supplierService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<MenuModel> menuLeft = menuService.findAllByMenuTypeId(3, 1);
        request.setAttribute("menuLeft", menuLeft);
        String url = "";
        String id = request.getParameter("id");
        if (id != null) {
            SupplierModel supplierModel = supplierService.findOneById(Long.parseLong(id));
            request.setAttribute("supplierModel", supplierModel);
            url = "../views/admin/editsupplier.jsp";
        } else {
            MessageUtil.showMessage(request);
            List<SupplierModel> suppliers = supplierService.findAll();
            request.setAttribute("suppliers", suppliers);
            url = "../views/admin/supplier.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);
    }
}
