package com.ecostore.controller.admin.api;

import com.ecostore.model.InformationModel;
import com.ecostore.service.IInformationService;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/api-admin-information")
public class InformationAPI extends HttpServlet {

    @Inject
    private IInformationService informationService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF8");
        response.setContentType("application/json");
        InformationModel informationModel = mapper.readValue(request.getInputStream(), InformationModel.class);
        informationModel = informationService.insert(informationModel);
        mapper.writeValue(response.getOutputStream(), informationModel);
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF8");
        response.setContentType("application/json");
        InformationModel informationModel = mapper.readValue(request.getInputStream(), InformationModel.class);
        informationModel = informationService.update(informationModel);
        mapper.writeValue(response.getOutputStream(), informationModel);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF8");
        response.setContentType("application/json");
        InformationModel informationModel = mapper.readValue(request.getInputStream(), InformationModel.class);
        informationService.delete(informationModel.getIds());
        mapper.writeValue(response.getOutputStream(), "{}");
    }
}
