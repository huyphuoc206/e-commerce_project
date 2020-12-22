package com.ecostore.dao;

import com.ecostore.model.AboutModel;

public interface IAboutDAO {
    AboutModel findOneByStatus(int status);
}
