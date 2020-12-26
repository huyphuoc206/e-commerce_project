package com.ecostore.dao.impl;

import com.ecostore.dao.IUserDAO;
import com.ecostore.mapper.UserMapper;
import com.ecostore.model.UserModel;

import java.util.List;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO {

    @Override
    public UserModel findOneByUsernameAndPasswordAndStatus(String username, String password, int status) {
        String sql = "SELECT * FROM user JOIN role ON user.roleid = role.id WHERE username = ? AND password = ? AND status = ?";
        List<UserModel> users = query(sql, new UserMapper(), username, password, status);
        return users.isEmpty() ? null : users.get(0);
    }
}
