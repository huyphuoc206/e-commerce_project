package com.ecostore.dao;

import com.ecostore.model.OrderDetailsModel;

public interface IOrderDetailDAO {
    long insert(OrderDetailsModel model);

    OrderDetailsModel findOneById(long id);
}
