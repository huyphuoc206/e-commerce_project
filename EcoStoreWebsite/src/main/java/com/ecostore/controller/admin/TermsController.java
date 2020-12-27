package com.ecostore.controller.admin;

import com.ecostore.model.MenuModel;
import com.ecostore.model.TermsModel;
import com.ecostore.service.IMenuService;
import com.ecostore.service.IMenuTypeService;
import com.ecostore.service.ITermsService;
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

@WebServlet(urlPatterns = "/quan-tri/dieu-khoan")
public class TermsController extends HttpServlet {

    @Inject
    private IMenuService menuService;
    @Inject
    private ITermsService termsService;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<MenuModel> menuLeft = menuService.findAllByMenuTypeId(3, 1);
        request.setAttribute("menuLeft", menuLeft);
        String id = request.getParameter("id");
        String url = "";
        if (id!=null){
            TermsModel termsModel = termsService.findOneById(Long.parseLong(id));
            request.setAttribute("termsModel", termsModel);
            url = "../views/admin/editterms.jsp";

        } else{
            MessageUtil.showMessage(request);
            List<TermsModel> termsModels = termsService.findAll();
            request.setAttribute("termsModels", termsModels);
            url = "../views/admin/terms.jsp";
        }

        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);

    }

}
