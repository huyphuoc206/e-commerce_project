package com.ecostore.service;

import com.ecostore.dao.ITermsDAO;
import com.ecostore.model.TermsModel;

import javax.inject.Inject;

public class TermsService implements ITermsService{
    @Inject
    private ITermsDAO termsDAO;
    @Override
    public TermsModel findOneByStatus(int status) {
        return termsDAO.findOneByStatus(status);
    }
}
