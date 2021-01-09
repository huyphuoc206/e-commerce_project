package com.ecostore.dao;

import com.ecostore.model.UserModel;

import java.util.List;


public interface IUserDAO {
    List<UserModel> findAllUsers();

    UserModel findOneByUsernameAndPasswordAndStatus(String username, String password, int status);

    Long insert(UserModel user);

    boolean update(UserModel user);

    boolean delete(long id);

    UserModel findOneByUsernameAndEmail(String username, String email);

    UserModel findOneById(Long id);

    UserModel findOneByEmail(String email);

    UserModel findOneByUserName(String username);

    boolean resetPassword(long userId, String newPassword);
}
