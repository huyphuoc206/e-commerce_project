package com.ecostore.service.impl;

import com.ecostore.dao.IPrivacyPolicyDAO;
import com.ecostore.model.PrivacyPolicyModel;
import com.ecostore.service.IPrivacyPolicyService;

import javax.inject.Inject;

public class PrivacyPolicyService implements IPrivacyPolicyService {
    @Inject
    private IPrivacyPolicyDAO privacyPolicyDAO;

    @Override
    public PrivacyPolicyModel findOneByStatus(int status) {
        return privacyPolicyDAO.findOneByStatus(status);
    }
}
