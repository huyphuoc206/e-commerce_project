package com.ecostore.controller.admin.api;

import com.ecostore.mail.MailMessage;
import com.ecostore.mail.MailUtils;
import com.ecostore.model.MenuModel;
import com.ecostore.model.UserModel;
import com.ecostore.service.IUserService;
import com.ecostore.utils.MD5Hashing;
import com.ecostore.utils.SessionUtil;
import org.codehaus.jackson.map.ObjectMapper;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/api-admin-user")
public class UserAPI extends HttpServlet {
    @Inject
    private IUserService userService;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF8");
        response.setContentType("application/json");
        UserModel userModel = mapper.readValue(request.getInputStream(), UserModel.class);
        UserModel userSession = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
        userModel.setCreatedBy(userSession.getUsername());
        userModel = userService.insert(userModel);
        if (userModel != null) {
            if (userModel.getRoleId() == 1){
                MailUtils.sendMail(userModel.getEmail(), "Thư chào mừng", MailMessage.getWelcomeAdmin(userModel.getFullname()));
            } else {
                MailUtils.sendMail(userModel.getEmail(), "Thư chào mừng", MailMessage.getWelcome(userModel.getFullname()));
            }
        }
        mapper.writeValue(response.getOutputStream(), userModel);
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF8");
        response.setContentType("application/json");
        UserModel userModel = mapper.readValue(request.getInputStream(), UserModel.class);
        UserModel userOld = userService.findOneById(userModel.getId());
        UserModel userSession = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
        userModel.setModifiedBy(userSession.getUsername());
        //xử lý với userSession thay đổi thông tin
        if (userModel.getId() == userSession.getId()){
            //nếu user đang hoạt động chỉnh trạng thái hoạt động về 0
            if (userModel.getStatus()==0) {
                mapper.writeValue(response.getOutputStream(), "");
                return;
            }
            if (!MD5Hashing.hash(userModel.getPassword()).equals(userOld.getPassword()) && !userModel.getPassword().equals(userOld.getPassword())){
                String passNew = MD5Hashing.hash(userModel.getPassword());
                userModel.setPassword(passNew);
                userService.update(userModel);
                SessionUtil.getInstance().removeValue(request, "USERMODEL");
                mapper.writeValue(response.getOutputStream(), "updatepass");
                return;
            }
        }
        //với những user khác nếu thay đổi mật khẩu
        if (!MD5Hashing.hash(userModel.getPassword()).equals(userOld.getPassword()) && !userModel.getPassword().equals(userOld.getPassword())) {
            String passNew = MD5Hashing.hash(userModel.getPassword());
            userModel.setPassword(passNew);
        }
        //mật khẩu trùng
        if (MD5Hashing.hash(userModel.getPassword()).equals(userOld.getPassword())){
            mapper.writeValue(response.getOutputStream(), "overlappass");
            return;
        }
        //update cho những người dùng khác userSession
        userModel = userService.update(userModel);
        mapper.writeValue(response.getOutputStream(), userModel);
        //chỉnh sửa chính tk của mình
        if (userModel.getId() == userSession.getId()){
                SessionUtil.getInstance().putValue(request, "USERMODEL", userModel);
        }

    }
    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF8");
        response.setContentType("application/json");
        UserModel userModel = mapper.readValue(request.getInputStream(), UserModel.class);
        UserModel userSession = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
        boolean result = userService.delete(userModel.getIds(), userSession);
        mapper.writeValue(response.getOutputStream(), result);
    }
}
