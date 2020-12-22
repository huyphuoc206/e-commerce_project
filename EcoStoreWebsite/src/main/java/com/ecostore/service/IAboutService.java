package com.ecostore.service;

import com.ecostore.model.AboutModel;

public interface IAboutService {
    AboutModel findOneByStatus(int status);
}
