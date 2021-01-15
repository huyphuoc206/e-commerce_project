package com.ecostore.service.impl;

import com.ecostore.dao.IUserDAO;
import com.ecostore.dao.impl.UserDAO;
import com.ecostore.model.UserModel;
import com.ecostore.service.IUserService;
import com.ecostore.utils.MD5Hashing;
import com.ecostore.utils.SessionUtil;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

public class UserService implements IUserService {

    @Inject
    private IUserDAO userDAO;

    @Override
    public List<UserModel> findAllUsers() {
        return userDAO.findAllUsers();
    }

    @Override
    public UserModel findOneByUsernameAndPasswordAndStatus(String username, String password, int status) {
        password = MD5Hashing.hash(password);
        UserModel user = userDAO.findOneByUsernameAndPasswordAndStatus(username, password, status);
        if (user != null)
            if (!user.getUsername().equals(username)) return null;
        return user;
    }

    @Override
    public UserModel findOneById(Long id) {
        return userDAO.findOneById(id);
    }

    @Override
    public UserModel findOneByUserName(String username) {
        return userDAO.findOneByUserName(username);
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
        boolean temp = true;
        UserModel oldUserModel = userDAO.findOneById(user.getId());
        if ( !user.getEmail().equals(oldUserModel.getEmail())) {
            UserModel userbyemail = userDAO.findOneByEmail(user.getEmail());
            if (userbyemail != null) {
                temp = false;
            }
        }
        if ( !user.getUsername().equals(oldUserModel.getUsername())) {
            UserModel userbyusername = userDAO.findOneByUserName(user.getUsername());
            if (userbyusername != null) {
                temp = false;
            }
        }
        if (temp){
//            if (!user.getPassword().equals(oldUserModel.getPassword())){
//                String passNew = MD5Hashing.hash(user.getPassword());
//                user.setPassword(passNew);
//            }
            user.setCreatedDate(oldUserModel.getCreatedDate());
            user.setCreatedBy(oldUserModel.getCreatedBy());
            user.setModifiedDate(new Timestamp(System.currentTimeMillis()));
            if (userDAO.update(user)) {
                return userDAO.findOneById(user.getId());
            }
        }
        return null;
    }

    @Override
    public boolean delete(long[] ids, UserModel userSession) {
        for (long id : ids) {
            if (id == userSession.getId() || !userDAO.delete(id))
                return false;
        }
        return true;
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
