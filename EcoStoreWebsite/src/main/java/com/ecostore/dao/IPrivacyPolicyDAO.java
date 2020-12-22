package com.ecostore.dao;

import com.ecostore.model.PrivacyPolicyModel;

public interface IPrivacyPolicyDAO {
    PrivacyPolicyModel findOneByStatus(int status);
}
