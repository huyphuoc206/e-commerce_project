package com.ecostore.service.impl;

import com.ecostore.dao.IAboutDAO;
import com.ecostore.model.AboutModel;
import com.ecostore.service.IAboutService;

import javax.inject.Inject;

public class AboutService implements IAboutService {
    @Inject
    private IAboutDAO iAboutDAO;
    @Override
    public AboutModel findOneByStatus(int status) {
        return iAboutDAO.findOneByStatus(status);
    }
}
