package com.ecostore.service;

import com.ecostore.model.TermsModel;

public interface ITermsService {
    TermsModel findOneByStatus(int status);
}
