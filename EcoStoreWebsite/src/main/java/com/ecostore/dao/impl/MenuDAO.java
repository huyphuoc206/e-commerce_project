package com.ecostore.dao.impl;

import com.ecostore.dao.IMenuDAO;
import com.ecostore.mapper.MenuMapper;
import com.ecostore.model.MenuModel;

import java.util.List;

public class MenuDAO extends AbstractDAO<MenuModel> implements IMenuDAO {
    @Override
    public List<MenuModel> findAllByMenuTypeId(long menuTypeId, int status) {
        String sql = "SELECT * FROM menu WHERE menutypeid = ? AND status = ?";
        return query(sql, new MenuMapper(), menuTypeId,status);
    }
}
