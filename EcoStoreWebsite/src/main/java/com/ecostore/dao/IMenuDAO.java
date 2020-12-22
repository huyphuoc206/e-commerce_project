package com.ecostore.dao;

import com.ecostore.model.MenuModel;

import java.util.List;

public interface IMenuDAO {
    List<MenuModel> findAllByMenuTypeId(long menuTypeId, int status);
}
