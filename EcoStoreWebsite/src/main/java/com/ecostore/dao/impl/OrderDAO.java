package com.ecostore.dao.impl;

import com.ecostore.dao.IOrderDAO;
import com.ecostore.mapper.OrderDetailMapper;
import com.ecostore.mapper.OrdersMapper;
import com.ecostore.model.OrderDetailsModel;
import com.ecostore.model.OrdersModel;

import java.util.List;

public class OrderDAO extends AbstractDAO<OrdersModel> implements IOrderDAO {

    @Override
    public long insert(OrdersModel model) {
        String sql = "INSERT INTO orders (userid, paymentid, customername, phone, address,message,totalprice,status,createddate,createdby) VALUES (?,?,?,?,?,?,?,?,?,?)";
        return insert(sql, model.getUserId(), model.getPaymentId(), model.getCustomerName(), model.getPhone(),
                model.getAddress(), model.getMessage(), model.getTotalPrice(), model.getStatus(), model.getCreatedDate(), model.getCreatedBy());
    }

    @Override
    public OrdersModel findOneById(long id) {
        String sql = "SELECT * FROM orders WHERE id = ?";
        List<OrdersModel> ordersModels = query(sql, new OrdersMapper(), id);
        return ordersModels.isEmpty() ? null : ordersModels.get(0);
    }
}
