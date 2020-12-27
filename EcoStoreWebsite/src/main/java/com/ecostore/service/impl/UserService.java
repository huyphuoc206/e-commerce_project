package com.ecostore.service.impl;

import com.ecostore.dao.IUserDAO;
import com.ecostore.model.UserModel;
import com.ecostore.service.IUserService;
import com.ecostore.utils.MD5Hashing;

import javax.inject.Inject;
import java.sql.Timestamp;

public class UserService implements IUserService {

    @Inject
    private IUserDAO userDAO;

    @Override
    public UserModel findOneByUsernameAndPasswordAndStatus(String username, String password, int status) {
        password = MD5Hashing.hash(password);
        return userDAO.findOneByUsernameAndPasswordAndStatus(username, password, status);
    }

    @Override
    public UserModel insert(UserModel user) {
        UserModel temp = userDAO.findOneByUsernameAndEmail(user.getUsername(), user.getEmail());
        if (temp == null) {
            user.setCreatedDate(new Timestamp(System.currentTimeMillis()));
            // hash password to MD5
            user.setPassword(MD5Hashing.hash(user.getPassword()));
            Long id = userDAO.insert(user);
            return userDAO.findOneById(id);
        }
        return null;
    }
}
