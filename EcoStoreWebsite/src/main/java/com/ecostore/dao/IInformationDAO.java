package com.ecostore.dao;

import com.ecostore.model.InformationModel;

import java.util.List;

public interface IInformationDAO {
    List<InformationModel> findAll();

    InformationModel findOneById(long id);

    InformationModel findOneByStatus(int status);

    Long insert(InformationModel model);

    void update(InformationModel model);

    void delete(long id);
}
