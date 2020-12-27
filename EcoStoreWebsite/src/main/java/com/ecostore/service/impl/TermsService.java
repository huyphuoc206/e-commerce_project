package com.ecostore.service.impl;

import com.ecostore.dao.ITermsDAO;
import com.ecostore.model.TermsModel;
import com.ecostore.service.ITermsService;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

public class TermsService implements ITermsService {
    @Inject
    private ITermsDAO termsDAO;
    @Override
    public TermsModel findOneByStatus(int status) {
        return termsDAO.findOneByStatus(status);
    }

    @Override
    public List<TermsModel> findAll() {
        return termsDAO.findAll();

    }
    @Override
    public TermsModel findOneById(long id) {
        return termsDAO.findOneById(id);
    }

    @Override
    public TermsModel insert(TermsModel termsModel) {
        termsModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
        termsModel.setCreatedBy("");
        Long id = termsDAO.insert(termsModel);
        return termsDAO.findOneById(id);
    }
}
