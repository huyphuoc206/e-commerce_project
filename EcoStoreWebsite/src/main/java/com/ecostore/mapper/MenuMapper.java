package com.ecostore.mapper;

import com.ecostore.model.MenuModel;
import com.ecostore.model.MenuTypeModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class MenuMapper implements IRowMapper<MenuModel> {

    @Override
    public MenuModel mapRow(ResultSet resultSet) {
        MenuModel model = new MenuModel();
        try {
            model.setId(resultSet.getLong("id"));
            model.setName(resultSet.getString("name"));
            model.setLink(resultSet.getString("link"));
            model.setStatus(resultSet.getInt("status"));
            MenuTypeModel menuTypeModel = new MenuTypeModel();
            menuTypeModel.setId(resultSet.getLong("menutypeid"));
            model.setMenuTypeId(menuTypeModel);
            if (resultSet.getTimestamp("createddate") != null) {
                model.setCreatedDate((resultSet.getTimestamp("createddate")));
            }
            if (resultSet.getTimestamp("createdby") != null) {
                model.setCreatedBy((resultSet.getString("createdby")));
            }
            if (resultSet.getTimestamp("modifieddate") != null) {
                model.setModifiedDate((resultSet.getTimestamp("modifieddate")));
            }
            if (resultSet.getTimestamp("modifiedby") != null) {
                model.setModifiedBy((resultSet.getString("modifiedby")));
            }
            return model;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
}
