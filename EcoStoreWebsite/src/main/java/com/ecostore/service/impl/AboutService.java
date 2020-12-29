package com.ecostore.service.impl;

import com.ecostore.dao.IAboutDAO;
import com.ecostore.model.AboutModel;
import com.ecostore.service.IAboutService;

import javax.inject.Inject;

public class AboutService implements IAboutService {
    @Inject
    private IAboutDAO aboutDAO;

    @Override
    public AboutModel findOneByStatus(int status) {
        return aboutDAO.findOneByStatus(status);
    }
}
