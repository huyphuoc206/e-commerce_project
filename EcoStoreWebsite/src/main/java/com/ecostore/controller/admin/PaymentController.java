package com.ecostore.controller.admin;

import com.ecostore.model.MenuModel;
import com.ecostore.model.PaymentModel;
import com.ecostore.service.IMenuService;
import com.ecostore.service.IPaymentService;
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


@WebServlet(urlPatterns = "/quan-tri/phuong-thuc-thanh-toan")
public class PaymentController extends HttpServlet {
    @Inject
    private IMenuService menuService;
    @Inject
    private IPaymentService paymentService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<MenuModel> menuLeft = menuService.findAllByMenuTypeId(3, 1);
        request.setAttribute("menuLeft", menuLeft);
        String url = "";
        String id = request.getParameter("id");
        if (id != null) {
            PaymentModel paymentModel = paymentService.findOneById(Long.parseLong(id));
            request.setAttribute("paymentModel", paymentModel);
            url = "../views/admin/editpayment.jsp";
        } else {
            MessageUtil.showMessage(request);
            List<PaymentModel> payments = paymentService.findAll();
            request.setAttribute("payments", payments);
            url = "../views/admin/payments.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);
    }
}