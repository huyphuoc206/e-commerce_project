package com.ecostore.dao;

import com.ecostore.model.OrderDetailsModel;

import java.util.List;

public interface IOrderDetailDAO {
    long insert(OrderDetailsModel model);

    OrderDetailsModel findOneById(long id);

    List<OrderDetailsModel> findAllByOrderId(long orderId);

    boolean deleteByOrderId(long id);
}
