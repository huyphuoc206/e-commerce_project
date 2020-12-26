package com.ecostore.service.impl;

import com.ecostore.dao.IUserDAO;
import com.ecostore.model.UserModel;
import com.ecostore.service.IUserService;

import javax.inject.Inject;

public class UserService implements IUserService {

    @Inject
    private IUserDAO userDAO;

    @Override
    public UserModel findOneByUsernameAndPasswordAndStatus(String username, String password, int status) {
        return userDAO.findOneByUsernameAndPasswordAndStatus(username, password, status);
    }
}
