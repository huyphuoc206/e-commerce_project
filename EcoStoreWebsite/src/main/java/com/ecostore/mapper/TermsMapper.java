package com.ecostore.mapper;

import com.ecostore.model.TermsModel;

import java.sql.ResultSet;
import java.sql.SQLDataException;
import java.sql.SQLException;

public class TermsMapper implements  IRowMapper{


    @Override
    public TermsModel mapRow(ResultSet resultSet) {
        TermsModel model = new TermsModel();
        try{
            model.setId(resultSet.getLong("id"));
            model.setContent(resultSet.getString("content"));
            model.setStatus(resultSet.getInt("status"));
            if(resultSet.getTimestamp("createddate") != null){
                model.setCreatedDate((resultSet.getTimestamp("createddate")));
            }
            if(resultSet.getTimestamp("createdby") != null){
                model.setCreatedBy((resultSet.getString("createdby")));
            }
            if(resultSet.getTimestamp("modifieddate") != null){
                model.setModifiedDate((resultSet.getTimestamp("modifieddate")));
            }
            if(resultSet.getTimestamp("modifiedby") != null){
                model.setModifiedBy((resultSet.getString("modifiedby")));
            }
            return model;

        }catch (SQLException throwables){
                return null;
        }

    }
}
