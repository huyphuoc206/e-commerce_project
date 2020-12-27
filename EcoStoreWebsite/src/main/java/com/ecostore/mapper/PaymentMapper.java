package com.ecostore.mapper;

import com.ecostore.model.PaymentModel;


import java.sql.ResultSet;
import java.sql.SQLException;

public class PaymentMapper implements IRowMapper<PaymentModel> {
    @Override
    public PaymentModel mapRow(ResultSet resultSet) {
        PaymentModel model = new PaymentModel();
        try {
            model.setId(resultSet.getLong("id"));
            model.setName(resultSet.getString("name"));
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
