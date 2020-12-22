package com.ecostore.mapper;

import com.ecostore.model.AboutModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class AboutMapper implements IRowMapper<AboutModel> {
    AboutModel model = new AboutModel();
    @Override
    public AboutModel mapRow(ResultSet resultSet) {
        try {
            model.setId(resultSet.getLong("id"));
            model.setContent(resultSet.getString("content"));
            model.setImageLink(resultSet.getString("imagelink"));
            model.setStatus(resultSet.getInt("status"));
            if (resultSet.getTimestamp("createddate")!= null){
                model.setCreatedDate(resultSet.getTimestamp("createddate"));
            }
            if (resultSet.getString("createdby")!= null){
                model.setCreatedBy(resultSet.getString("createdby"));
            }
            if (resultSet.getTimestamp("modifieddate")!= null){
                model.setModifiedDate(resultSet.getTimestamp("modifieddate"));
            }
            if (resultSet.getString("modifiedby")!= null){
                model.setModifiedBy(resultSet.getString("modifiedby"));
            }
            return model;
        } catch (SQLException throwables){
            return null;
        }
    }
}
