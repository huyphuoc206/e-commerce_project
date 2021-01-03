package com.ecostore.service;

import com.ecostore.model.UserModel;

public interface IUserService {
    UserModel findOneByUsernameAndPasswordAndStatus(String username, String password, int status);

    UserModel findOneById(Long id);

    UserModel insert(UserModel user);

    UserModel update(UserModel user);

    UserModel findOneByEmail(String email);

    UserModel resetPassword(long userId, String currentPassword, String newPassword);
}
