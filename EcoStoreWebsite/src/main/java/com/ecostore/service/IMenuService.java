package com.ecostore.service;

import com.ecostore.model.MenuModel;

import java.util.List;

public interface IMenuService {
    List<MenuModel> findAllByMenuTypeId(long menuTypeId, int status);
    List<MenuModel> findAll();
    MenuModel findAllById(long id);
    MenuModel insert(MenuModel model);
    MenuModel update(MenuModel model);
    void delete(long[] ids);
}
