package com.ecostore.service.impl;

import com.ecostore.dao.IInformationDAO;
import com.ecostore.model.InformationModel;
import com.ecostore.service.IInformationService;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

public class InformationService implements IInformationService {

    @Inject
    private IInformationDAO informationDAO;

    @Override
    public List<InformationModel> findAll() {
        return informationDAO.findAll();
    }

    @Override
    public InformationModel findOneById(long id) {
        return informationDAO.findOneById(id);
    }

    @Override
    public InformationModel findOneByStatus(int status) {
        return informationDAO.findOneByStatus(status);
    }

    @Override
    public InformationModel insert(InformationModel model) {
        model.setCreatedDate(new Timestamp(System.currentTimeMillis()));
        model.setCreatedBy("");
        Long id = informationDAO.insert(model);
        return informationDAO.findOneById(id);
    }

    @Override
    public InformationModel update(InformationModel model) {
        InformationModel oldInformation = informationDAO.findOneById(model.getId());
        model.setCreatedDate(oldInformation.getCreatedDate());
        model.setCreatedBy(oldInformation.getCreatedBy());
        model.setModifiedDate(new Timestamp(System.currentTimeMillis()));
        model.setModifiedBy("");
        informationDAO.update(model);
        return informationDAO.findOneById(model.getId());
    }

    @Override
    public void delete(long[] ids) {
        for (long id : ids) {
            informationDAO.delete(id);
        }
    }
}
