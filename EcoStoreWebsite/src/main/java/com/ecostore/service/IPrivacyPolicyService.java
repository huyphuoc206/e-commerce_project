package com.ecostore.service;

import com.ecostore.model.PrivacyPolicyModel;

public interface IPrivacyPolicyService {
    PrivacyPolicyModel findOneByStatus(int status);
}
