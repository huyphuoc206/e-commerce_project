package com.ecostore.dao.impl;

import com.ecostore.dao.IAboutDAO;
import com.ecostore.mapper.AboutMapper;
import com.ecostore.model.AboutModel;

import java.util.ArrayList;
import java.util.List;

public class AboutDAO extends AbstractDAO<AboutModel> implements IAboutDAO {
    @Override
    public AboutModel findOneByStatus(int status) {
        String sql = "SELECT * FROM about where status = ?";
        List<AboutModel> list = new ArrayList<>();
        list = query(sql, new AboutMapper(), status);
        if (!list.isEmpty()){
            return list.get(0);
        }
        return null;
    }
}
