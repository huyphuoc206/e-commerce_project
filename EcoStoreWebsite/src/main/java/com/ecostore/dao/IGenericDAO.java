package com.ecostore.dao;

import com.ecostore.mapper.IRowMapper;

import java.util.List;

public interface IGenericDAO<T> {
    <T> List<T> query(String sql, IRowMapper<T> rowMapper, Object... parameters); // co the co nhieu tham so

    void update(String sql, Object... parameters);

    Long insert(String sql, Object... parameters);

}
