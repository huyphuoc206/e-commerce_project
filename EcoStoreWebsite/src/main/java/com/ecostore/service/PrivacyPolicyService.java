package com.ecostore.service;

import com.ecostore.dao.IPrivacyPolicyDAO;
import com.ecostore.model.PrivacyPolicyModel;

import javax.inject.Inject;

public class PrivacyPolicyService implements IPrivacyPolicyService {
    @Inject
    private IPrivacyPolicyDAO privacyPolicyDAO;

    @Override
    public PrivacyPolicyModel findOneByStatus(int status) {
        return privacyPolicyDAO.findOneByStatus(status);
    }
}
