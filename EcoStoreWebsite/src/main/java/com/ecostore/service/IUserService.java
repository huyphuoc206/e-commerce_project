package com.ecostore.service;

import com.ecostore.model.UserModel;

import java.util.List;

public interface IUserService {

    List<UserModel> findAllUsers();

    UserModel findOneByUsernameAndPasswordAndStatus(String username, String password, int status);

    UserModel findOneById(Long id);

    UserModel findOneByUserName(String username);

    UserModel insert(UserModel user);

    UserModel update(UserModel user);

    boolean delete(long [] ids, UserModel userSession);

    UserModel findOneByEmail(String email);

    UserModel resetPassword(long userId, String currentPassword, String newPassword);
}
