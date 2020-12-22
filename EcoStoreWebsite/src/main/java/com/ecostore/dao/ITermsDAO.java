package com.ecostore.dao;

import com.ecostore.model.TermsModel;

public interface ITermsDAO {
    TermsModel findOneByStatus(int status);
}
