package com.ecostore.service.impl;

import com.ecostore.dao.IOrderDetailDAO;
import com.ecostore.model.OrderDetailsModel;
import com.ecostore.service.IOrderDetailService;

import javax.inject.Inject;

public class OrderDetailService implements IOrderDetailService {
    @Inject
    private IOrderDetailDAO orderDetailDAO;

    @Override
    public OrderDetailsModel insert(OrderDetailsModel model) {
        Long id = orderDetailDAO.insert(model);
        return orderDetailDAO.findOneById(id);
    }
}
