package com.ecostore.service.impl;

import com.ecostore.dao.IOrderDAO;
import com.ecostore.model.OrdersModel;
import com.ecostore.service.IOrderService;

import javax.inject.Inject;
import java.sql.Timestamp;

public class OrderService implements IOrderService {
    @Inject
    private IOrderDAO orderDAO;

    @Override
    public OrdersModel insert(OrdersModel model) {
        model.setCreatedDate(new Timestamp(System.currentTimeMillis()));
        Long id = orderDAO.insert(model);
        return orderDAO.findOneById(id);
    }
}
