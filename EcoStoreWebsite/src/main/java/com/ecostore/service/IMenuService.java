package com.ecostore.service;

import com.ecostore.model.MenuModel;

import java.util.List;

public interface IMenuService {
    List<MenuModel> findAllByMenuTypeId(long menuTypeId, int status);
}
