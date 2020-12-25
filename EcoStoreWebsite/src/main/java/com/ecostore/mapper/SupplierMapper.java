package com.ecostore.mapper;

import com.ecostore.model.SupplierModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class SupplierMapper  implements IRowMapper{
    @Override
    public SupplierModel mapRow(ResultSet resultSet) {
        SupplierModel model = new SupplierModel();
        try {
            model.setId(resultSet.getLong("id"));
            model.setName(resultSet.getString("name"));
            model.setCode(resultSet.getString("code"));
            model.setStatus(resultSet.getInt("status"));
            if (resultSet.getTimestamp("createddate") != null) {
                model.setCreatedDate(resultSet.getTimestamp("createddate"));
            }
            if (resultSet.getString("createdby") != null) {
                model.setCreatedBy(resultSet.getString("createdby"));
            }
            if (resultSet.getTimestamp("modifieddate") != null) {
                model.setModifiedDate(resultSet.getTimestamp("modifieddate"));
            }
            if (resultSet.getString("modifiedby") != null) {
                model.setModifiedBy(resultSet.getString("modifiedby"));
            }
            return model;
        } catch (SQLException throwables) {
            return null;
        }

    }
}
