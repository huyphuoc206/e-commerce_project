package com.ecostore.dao.impl;

import com.ecostore.dao.ITermsDAO;
import com.ecostore.mapper.TermsMapper;
import com.ecostore.model.TermsModel;

import java.util.List;

public class TermsDAO extends AbstractDAO<TermsModel> implements ITermsDAO {
    @Override
    public TermsModel findOneByStatus(int status) {
        String sql = "SELECT * FROM terms WHERE status = ?";
        List<TermsModel> list = query(sql , new TermsMapper() , status);
        if (list.isEmpty()) return null;
        return list.get(0);

    }
}
