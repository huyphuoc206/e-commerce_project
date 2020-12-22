package com.ecostore.service.impl;

import com.ecostore.dao.IMenuDAO;
import com.ecostore.model.MenuModel;
import com.ecostore.service.IMenuService;

import javax.inject.Inject;
import java.util.List;

public class MenuService implements IMenuService {

    @Inject
    private IMenuDAO menuDAO;

    @Override
    public List<MenuModel> findAllByMenuTypeId(long menuTypeId, int status) {
        return menuDAO.findAllByMenuTypeId(menuTypeId, status);
    }
}
