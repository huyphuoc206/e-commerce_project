package com.ecostore.service;

import com.ecostore.model.SupplierModel;

import java.util.List;

public interface ISupplierService {
    List<SupplierModel> findAllByStatus(int status);
    List<SupplierModel> findAll();
    SupplierModel findOneById(long id);

    SupplierModel insert(SupplierModel supplierModel);

    SupplierModel update (SupplierModel supplierModel);

    void delete(long[] ids);
}
