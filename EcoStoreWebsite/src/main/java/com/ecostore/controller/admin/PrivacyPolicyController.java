package com.ecostore.controller.admin;

import com.ecostore.model.MenuModel;
import com.ecostore.model.PrivacyPolicyModel;
import com.ecostore.service.IMenuService;
import com.ecostore.service.IPrivacyPolicyService;
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

@WebServlet(urlPatterns = "/quan-tri/chinh-sach-bao-mat")
public class PrivacyPolicyController extends HttpServlet {
    @Inject
    private IMenuService menuService;
    @Inject
    private IPrivacyPolicyService privacyPolicyService;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<MenuModel> menuLeft = menuService.findAllByMenuTypeId(3, 1);
        request.setAttribute("menuLeft", menuLeft);
        String url = "";
        String id = request.getParameter("id");
        if (id!= null){
            PrivacyPolicyModel privacyPolicyModel = privacyPolicyService.findOneById(Long.parseLong(id));
            request.setAttribute("privacyPolicyModel", privacyPolicyModel);
            url = "../views/admin/editprivacypolicy.jsp";
        }else {
            MessageUtil.showMessage(request);
            List<PrivacyPolicyModel> privacyPolicyModels = privacyPolicyService.findAll();
            request.setAttribute("privacyPolicyModels", privacyPolicyModels);
            url ="../views/admin/privacypolicy.jsp";
        }

        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);


    }
}
