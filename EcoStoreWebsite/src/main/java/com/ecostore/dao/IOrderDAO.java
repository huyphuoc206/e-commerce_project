package com.ecostore.dao;

import com.ecostore.model.OrdersModel;

public interface IOrderDAO {
    long insert(OrdersModel model);

    OrdersModel findOneById(long id);
}
