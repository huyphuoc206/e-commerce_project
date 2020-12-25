package com.ecostore.mapper;

import com.ecostore.model.InformationModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class InformationMapper implements IRowMapper<InformationModel> {
    @Override
    public InformationModel mapRow(ResultSet resultSet) {
        try {
            InformationModel model = new InformationModel();
            model.setId(resultSet.getLong("id"));
            model.setAddress(resultSet.getString("address"));
            model.setPhone(resultSet.getString("phone"));
            model.setEmail(resultSet.getString("email"));
            model.setStatus(resultSet.getInt("status"));
            model.setFacebookLink(resultSet.getString("facebooklink"));
            model.setInstagramLink(resultSet.getString("instagramlink"));
            model.setTwitterLink(resultSet.getString("twitterlink"));
            if(resultSet.getTimestamp("createddate") != null){
                model.setCreatedDate((resultSet.getTimestamp("createddate")));
            }
            if(resultSet.getString("createdby") != null){
                model.setCreatedBy((resultSet.getString("createdby")));
            }
            if(resultSet.getTimestamp("modifieddate") != null){
                model.setModifiedDate((resultSet.getTimestamp("modifieddate")));
            }
            if(resultSet.getString("modifiedby") != null){
                model.setModifiedBy((resultSet.getString("modifiedby")));
            }
            return model;
        } catch (SQLException throwables) {
            return null;
        }
    }
}
