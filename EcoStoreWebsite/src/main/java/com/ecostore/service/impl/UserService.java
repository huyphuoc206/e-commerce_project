package com.ecostore.service.impl;

import com.ecostore.dao.IUserDAO;
import com.ecostore.dao.impl.UserDAO;
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
    public UserModel findOneById(Long id) {
        return userDAO.findOneById(id);
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

    @Override
    public UserModel update(UserModel user) {
        UserModel oldUserModel = userDAO.findOneById(user.getId());
        user.setCreatedDate(oldUserModel.getCreatedDate());
        user.setCreatedBy(oldUserModel.getCreatedBy());
        user.setModifiedDate(new Timestamp(System.currentTimeMillis()));
        if (userDAO.update(user)) {
            return userDAO.findOneById(user.getId());
        }
        return null;
    }

    @Override
    public UserModel findOneByEmail(String email) {
        return userDAO.findOneByEmail(email);
    }

    @Override
    public UserModel resetPassword(long userId, String currentPassword, String newPassword) {
        UserModel user = userDAO.findOneById(userId);
        currentPassword = MD5Hashing.hash(currentPassword);
        if (user == null || !user.getPassword().equals(currentPassword))
            return null;
        newPassword = MD5Hashing.hash(newPassword);
        if (userDAO.resetPassword(userId, newPassword))
            return userDAO.findOneById(userId);
        return null;
    }
}
