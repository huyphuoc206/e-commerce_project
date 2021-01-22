package com.ecostore.controller.web;

import com.ecostore.model.OrderDetailsModel;
import com.ecostore.model.OrdersModel;
import com.ecostore.model.ProductModel;
import com.ecostore.model.UserModel;
import com.ecostore.service.ILayoutAttributeService;
import com.ecostore.service.IOrderDetailService;
import com.ecostore.service.IOrderService;
import com.ecostore.service.IProductService;
import com.ecostore.utils.SessionUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/lich-su-mua-hang")
public class OrderHistoryController extends HttpServlet {
    @Inject
    private ILayoutAttributeService layoutAttributeService;
    @Inject
    private IOrderService orderService;
    @Inject
    private IOrderDetailService orderDetailService;
    @Inject
    private IProductService productService;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        layoutAttributeService.setHeaderWeb(request);
        layoutAttributeService.setFooterWeb(request);
        UserModel user = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
        if (user == null)
            response.sendRedirect(request.getContextPath() + "/dang-nhap?message=not_login&alert=danger");
        else {
            List<OrdersModel> orders = orderService.findAllByUserId(user.getId());
            request.setAttribute("orders", orders);
            RequestDispatcher rd = request.getRequestDispatcher("views/web/orderhistory.jsp");
            rd.forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
    