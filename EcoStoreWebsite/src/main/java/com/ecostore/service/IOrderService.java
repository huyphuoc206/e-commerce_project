package com.ecostore.service;

import com.ecostore.model.OrdersModel;

import java.util.List;

public interface IOrderService {
    OrdersModel insert(OrdersModel model);
    OrdersModel update(OrdersModel model);
    List<OrdersModel> findAll();
    OrdersModel findOneById(long id);
    List<OrdersModel> findAllByUserId(long userid);
    OrdersModel findOneByUserId(long userid);

}
