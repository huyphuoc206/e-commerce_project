package com.ecostore.dao;

import com.ecostore.model.SupplierModel;


import java.util.List;

public interface ISupplierDAO {
    List<SupplierModel> findAllByStatus(int status);
    List<SupplierModel> findAll();

    SupplierModel findOneById(long id);

    Long insert(SupplierModel supplierModel);

    void update(SupplierModel supplierModel);

    void delete(long id);
}
