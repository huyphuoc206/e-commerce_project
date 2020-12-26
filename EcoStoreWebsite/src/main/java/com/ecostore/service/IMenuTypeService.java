package com.ecostore.service;

import com.ecostore.model.MenuTypeModel;

import java.util.List;

public interface IMenuTypeService {
    List<MenuTypeModel> fillAll();
    MenuTypeModel findOneMenuTypeById(long id);
}
