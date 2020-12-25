package com.ecostore.service.impl;

import com.ecostore.dao.ITermsDAO;
import com.ecostore.model.TermsModel;
import com.ecostore.service.ITermsService;

import javax.inject.Inject;

public class TermsService implements ITermsService {
    @Inject
    private ITermsDAO termsDAO;
    @Override
    public TermsModel findOneByStatus(int status) {
        return termsDAO.findOneByStatus(status);
    }
}
