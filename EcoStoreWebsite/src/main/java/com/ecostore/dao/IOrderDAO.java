package com.ecostore.dao;

import com.ecostore.model.OrdersModel;

import java.util.List;

public interface IOrderDAO {
    long insert(OrdersModel model);

    boolean update(OrdersModel model);

    OrdersModel findOneById(long id);

    List<OrdersModel> findAll();

    boolean delete(long id);
}
