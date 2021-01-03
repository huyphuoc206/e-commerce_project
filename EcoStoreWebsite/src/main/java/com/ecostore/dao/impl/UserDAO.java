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

    @Override
    public Long insert(UserModel user) {
        String sql = "INSERT INTO user (fullname, username, password, email, phone, roleid, status, createddate, createdby) VALUES (?,?,?,?,?,?,?,?,?)";
        return insert(sql, user.getFullname(), user.getUsername(), user.getPassword(), user.getEmail(), user.getPhone(), user.getRoleId(), user.getStatus(), user.getCreatedDate(), user.getCreatedBy());
    }

    @Override
    public boolean update(UserModel user) {
        String sql = "UPDATE user SET fullname = ?, username = ?, password = ?, email = ?, phone = ?, avatar = ?, roleid = ?, status = ?, keycode = ?, keytime = ?, modifieddate = ?, modifiedby = ? WHERE id = ?";
        return update(sql, user.getFullname(),user.getUsername(), user.getPassword(), user.getEmail(), user.getPhone(), user.getAvatar(), user.getRoleId(), user.getStatus(), user.getKeycode(), user.getKeytime(), user.getModifiedDate(), user.getModifiedBy(),  user.getId());
    }

    @Override
    public UserModel findOneByUsernameAndEmail(String username, String email) {
        String sql = "SELECT * FROM user WHERE username = ? OR email = ?";
        List<UserModel> users = query(sql, new UserMapper(), username, email);
        return users.isEmpty() ? null : users.get(0);
    }

    @Override
    public UserModel findOneById(Long id) {
        String sql = "SELECT * FROM user JOIN role ON user.roleid = role.id WHERE user.id = ?";
        List<UserModel> users = query(sql, new UserMapper(), id);
        return users.isEmpty() ? null : users.get(0);
    }

    @Override
    public UserModel findOneByEmail(String email) {
        String sql = "SELECT * FROM user WHERE email = ?";
        List<UserModel> userModels = query(sql,new UserMapper(), email);
        return userModels.isEmpty() ? null : userModels.get(0);
    }

    @Override
    public boolean resetPassword(long userId, String newPassword) {
        String sql = "UPDATE user SET password = ? WHERE id = ?";
        return update(sql,newPassword,userId);
    }
}
