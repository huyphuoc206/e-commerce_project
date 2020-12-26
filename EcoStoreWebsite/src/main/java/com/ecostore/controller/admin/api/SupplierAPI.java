package com.ecostore.controller.admin.api;

import com.ecostore.model.CategoryModel;
import com.ecostore.model.SupplierModel;
import com.ecostore.service.ICategoryService;
import com.ecostore.service.ISupplierService;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(urlPatterns = "/api-admin-supplier")
public class SupplierAPI extends HttpServlet {
    @Inject
    private ISupplierService supplierService;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF8");
        response.setContentType("application/json");
        SupplierModel supplierModel = mapper.readValue(request.getInputStream(),SupplierModel.class);
        supplierModel = supplierService.insert(supplierModel);
        mapper.writeValue(response.getOutputStream(),supplierModel);
    }
    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF8");
        response.setContentType("application/json");
        SupplierModel supplierModel = mapper.readValue(request.getInputStream(),SupplierModel.class);
        supplierModel = supplierService.update(supplierModel);
        mapper.writeValue(response.getOutputStream(),supplierModel);
    }
    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF8");
        response.setContentType("application/json");
        SupplierModel supplierModel = mapper.readValue(request.getInputStream(),SupplierModel.class);
        supplierService.delete(supplierModel.getIds());
        mapper.writeValue(response.getOutputStream(), "{}");
    }
}
