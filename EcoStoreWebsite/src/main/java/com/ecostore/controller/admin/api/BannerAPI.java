package com.ecostore.controller.admin.api;


import com.ecostore.model.SlideModel;
import com.ecostore.model.UserModel;
import com.ecostore.service.ISlideService;
import com.ecostore.utils.SessionUtil;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/api-admin-banner")
public class BannerAPI extends HttpServlet {
    @Inject
    private ISlideService slideService;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF8");
        response.setContentType("application/json");
        SlideModel slide = mapper.readValue(request.getInputStream(), SlideModel.class);
        UserModel userModel = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
        SlideModel slideDisplayorderExist = slideService.findOneByStatusAndDisplayorder(slide.getDisplayorder());
        //kiem tra neu displayorder cua slide moi them vao trung voi displayorder slide cu van con hoat dong
        if (slideDisplayorderExist!= null){
            slide = null;
        } else {
            slide.setCreatedBy(userModel.getUsername());
            slide.setImageLink("");
            slide = slideService.insert(slide);
        }
        mapper.writeValue(response.getOutputStream(), slide);
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF8");
        response.setContentType("application/json");
        SlideModel slide = mapper.readValue(request.getInputStream(), SlideModel.class);
        UserModel userModel = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
        SlideModel slideDisplayorderExist = slideService.findOneByStatusAndDisplayorder(slide.getDisplayorder());
        //kiem tra neu displayorder cua slide moi them vao trung voi displayorder slide cu van con hoat dong
        if (slideDisplayorderExist!= null && slideDisplayorderExist.getId() != slide.getId()){
            slide = null;
        } else {
            slide.setImageLink("");
            slide.setModifiedBy(userModel.getUsername());
            slide = slideService.update(slide);
        }

        mapper.writeValue(response.getOutputStream(), slide);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF8");
        response.setContentType("application/json");
        SlideModel slide = mapper.readValue(request.getInputStream(), SlideModel.class);
        boolean result = slideService.delete(slide.getIds());
        mapper.writeValue(response.getOutputStream(), result);
    }
}
