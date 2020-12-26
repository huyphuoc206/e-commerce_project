package com.ecostore.dao;

import com.ecostore.model.UserModel;

public interface IUserDAO {
    UserModel findOneByUsernameAndPasswordAndStatus(String username, String password, int status);
}
