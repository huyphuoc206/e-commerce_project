package com.ecostore.service;

import com.ecostore.model.UserModel;

public interface IUserService {
    UserModel findOneByUsernameAndPasswordAndStatus(String username, String password, int status);
}
