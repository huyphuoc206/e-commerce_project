package com.ecostore.controller.web.api;

import com.ecostore.mail.MailMessage;
import com.ecostore.mail.MailUtils;
import com.ecostore.model.UserModel;
import com.ecostore.service.IUserService;
import com.ecostore.utils.SessionUtil;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/api-web-user")
public class UserAPI extends HttpServlet {

    @Inject
    private IUserService userService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF8");
        response.setContentType("application/json");
        UserModel userModel = mapper.readValue(request.getInputStream(), UserModel.class);
        userModel.setRoleId(2);
        userModel.setStatus(1);
        userModel.setCreatedBy(userModel.getUsername());
        userModel.setAvatar("");
        userModel = userService.insert(userModel);
        // dang ky thanh cong thi dang nhap va gui mail chao mung
        if (userModel != null) {
            SessionUtil.getInstance().putValue(request, "USERMODEL", userModel);
            MailUtils.sendMail(userModel.getEmail(), "Thư chào mừng", MailMessage.getWelcome(userModel.getFullname()));
        }
        mapper.writeValue(response.getOutputStream(), userModel);
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
