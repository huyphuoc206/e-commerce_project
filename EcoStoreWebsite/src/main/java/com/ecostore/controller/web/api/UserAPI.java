package com.ecostore.controller.web.api;

import com.ecostore.mail.MailMessage;
import com.ecostore.mail.MailUtils;
import com.ecostore.model.UserModel;
import com.ecostore.service.IUserService;
import com.ecostore.utils.MD5Hashing;
import com.ecostore.utils.RandomString;
import com.ecostore.utils.SessionUtil;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Timestamp;

@WebServlet(urlPatterns = "/api-web-user")
public class UserAPI extends HttpServlet {

    @Inject
    private IUserService userService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF8");
        response.setContentType("application/json");
        String email = request.getParameter("email");
        if (email != null) {
            UserModel userModel = userService.findOneByEmail(email);
            if (userModel != null) {
                userModel.setKeytime(new Timestamp(System.currentTimeMillis()));
                String key = RandomString.getAlphaNumericString(200);
                userModel.setKeycode(key);
                userService.update(userModel);
                MailUtils.sendMail(email, "Lấy lại mật khẩu", MailMessage.getUrlChangPass(email, userModel.getKeycode()));
            }
            mapper.writeValue(response.getOutputStream(), userModel);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF8");
        response.setContentType("application/json");
        UserModel userModel = mapper.readValue(request.getInputStream(), UserModel.class);
        userModel.setRoleId(2);
        userModel.setStatus(1);
        userModel.setCreatedBy(userModel.getUsername());
        userModel = userService.insert(userModel);
        // dang ky thanh cong thi dang nhap va gui mail chao mung
        if (userModel != null) {
            SessionUtil.getInstance().putValue(request, "USERMODEL", userModel);
            MailUtils.sendMail(userModel.getEmail(), "Thư chào mừng", MailMessage.getWelcome(userModel.getFullname()));
        }
        mapper.writeValue(response.getOutputStream(), userModel);
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF8");
        response.setContentType("application/json");
        UserModel userNew = mapper.readValue(request.getInputStream(), UserModel.class);
        UserModel userUpdate = userService.findOneById(userNew.getId());
        if (userNew.getPassword() != null) {
            userUpdate.setPassword(MD5Hashing.hash(userNew.getPassword()));
            userUpdate.setKeycode(null);
            userUpdate.setKeytime(null);
        } else {
            userUpdate.setAvatar(userNew.getAvatar());
            userUpdate.setFullname(userNew.getFullname());
            userUpdate.setUsername(userNew.getUsername());
            userUpdate.setEmail(userNew.getEmail());
            userUpdate.setPhone(userNew.getPhone());
        }
        userUpdate = userService.update(userUpdate);
        if (userUpdate != null)
            SessionUtil.getInstance().putValue(request, "USERMODEL", userUpdate);
        mapper.writeValue(response.getOutputStream(), userUpdate);
    }
}
