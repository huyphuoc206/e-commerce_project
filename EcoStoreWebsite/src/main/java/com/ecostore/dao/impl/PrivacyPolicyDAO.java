package com.ecostore.dao.impl;

import com.ecostore.dao.IPrivacyPolicyDAO;
import com.ecostore.mapper.PrivacyPolicyMapper;
import com.ecostore.model.PrivacyPolicyModel;

import java.util.List;

public class PrivacyPolicyDAO extends AbstractDAO<PrivacyPolicyDAO> implements IPrivacyPolicyDAO {
    @Override
    public PrivacyPolicyModel findOneByStatus(int status) {
        String sql = "SELECT * FROM privacypolicy WHERE status = ?";
        List<PrivacyPolicyModel> list = query(sql, new PrivacyPolicyMapper(), status);
        if (list.isEmpty()) return null;
        return list.get(0);
    }
}
