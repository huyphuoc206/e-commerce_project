package com.ecostore.mapper;

import com.ecostore.model.RoleModel;
import com.ecostore.model.UserModel;

import javax.management.relation.Role;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserMapper implements IRowMapper<UserModel> {
    @Override
    public UserModel mapRow(ResultSet resultSet) {
        try {
            UserModel user = new UserModel();
            user.setId(resultSet.getLong("id"));
            user.setUsername(resultSet.getString("username"));
            user.setPassword(resultSet.getString("password"));
            user.setFullname(resultSet.getString("fullname"));
            user.setEmail(resultSet.getString("email"));
            user.setPhone(resultSet.getString("phone"));
            user.setAvatar(resultSet.getString("avatar"));
            user.setStatus(resultSet.getInt("status"));
            RoleModel role = new RoleModel();
            if (resultSet.getString("code") != null) {
                role.setCode(resultSet.getString("code"));
            }
            if (resultSet.getString("name") != null) {
                role.setName(resultSet.getString("name"));
            }
            user.setRole(role);

            if (resultSet.getTimestamp("createddate") != null) {
                user.setCreatedDate((resultSet.getTimestamp("createddate")));
            }
            if (resultSet.getTimestamp("createdby") != null) {
                user.setCreatedBy((resultSet.getString("createdby")));
            }
            if (resultSet.getTimestamp("modifieddate") != null) {
                user.setModifiedDate((resultSet.getTimestamp("modifieddate")));
            }
            if (resultSet.getTimestamp("modifiedby") != null) {
                user.setModifiedBy((resultSet.getString("modifiedby")));
            }
            return user;
        } catch (SQLException throwables) {
            return null;
        }
    }
}
