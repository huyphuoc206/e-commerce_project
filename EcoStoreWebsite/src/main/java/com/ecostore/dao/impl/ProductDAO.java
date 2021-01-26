package com.ecostore.dao.impl;

import com.ecostore.dao.IProductDAO;

import com.ecostore.mapper.ProductMapper;

import com.ecostore.model.ProductModel;
import com.ecostore.paging.IPageble;
import org.apache.commons.lang3.StringUtils;

import java.util.List;

public class ProductDAO extends AbstractDAO<ProductModel> implements IProductDAO {

    @Override
    public List<ProductModel> findAllSortByCreateddate() {
        String sql = "SELECT P.*, I.imagelink FROM product P join productgallery I on P.id = I.productid  WHERE status = 1 ORDER BY createddate DESC";
        return query(sql, new ProductMapper());
    }

    @Override
    public List<ProductModel> findAllSortByDiscount() {
        String sql = "SELECT P.*, I.imagelink FROM product P join productgallery I on P.id = I.productid  WHERE status = 1 ORDER BY discount DESC ";
        return query(sql, new ProductMapper());
    }

    @Override
    public ProductModel findOneById(long id) {
        String sql = "SELECT P.*, I.imagelink FROM product P join productgallery I on P.id = I.productid WHERE P.id = ?";
        List<ProductModel> products = query(sql, new ProductMapper(), id);
        if (products.size() == 0) return null;
        return products.get(0);
    }

    @Override
    public int getTotalItemsByCategoryCode(String code) {
        String sql = "SELECT COUNT(*) FROM product JOIN category ON product.categoryid = category.id WHERE category.code = ? AND product.status = 1";
        return count(sql, code);
    }

    @Override
    public int getTotalItemsByKeyword(String keyword) {
        String sql = "SELECT COUNT(*) FROM product WHERE (name LIKE ? OR description LIKE ?) AND status = 1";
        return count(sql, "%" + keyword + "%", "%" + keyword + "%");
    }

    @Override
    public int getTotalItemsByCategoryAndSupplierCode(String categoryCode, String supplierCode) {
        String sql = "SELECT COUNT(*) FROM product JOIN category ON product.categoryid = category.id JOIN supplier ON product.supplierid = supplier.id WHERE category.code = ? AND supplier.code = ? AND product.status = 1";
        return count(sql, categoryCode, supplierCode);
    }

    @Override
    public List<ProductModel> findAllByCategoryId(long categoryId) {
        String sql = "SELECT P.*, I.imagelink FROM product P join productgallery I on P.id = I.productid WHERE P.categoryid = ? AND P.status = 1";
        return query(sql, new ProductMapper(), categoryId);
    }

    @Override
    public List<ProductModel> findAllByKeyWord(String keyword, IPageble pageble) {
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT P.*, I.imagelink FROM");
        sql.append(" product P join productgallery I on P.id = I.productid");
        sql.append(" WHERE P.status = 1 and (P.name LIKE ? OR P.description LIKE ?)");

        if (pageble.getSorter() != null && StringUtils.isNotBlank(pageble.getSorter().getSortName()) && StringUtils.isNotBlank(pageble.getSorter().getSortBy())) {
            sql.append(" GROUP BY P.id");
            sql.append(" ORDER BY " + pageble.getSorter().getSortName() + " " + pageble.getSorter().getSortBy());
            sql.append(" LIMIT " + pageble.getOffset() + ", " + pageble.getLimit());
        } else if (pageble.getOffset() != null && pageble.getLimit() != null) {
            sql.append(" GROUP BY P.id");
            sql.append(" LIMIT " + pageble.getOffset() + ", " + pageble.getLimit());
        }
        return query(sql.toString(), new ProductMapper(), "%" + keyword + "%", "%" + keyword + "%");
    }

    @Override
    public List<ProductModel> findAllByCategoryAndSupplierCode(String category, String supplier, IPageble pageble) {
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT P.*, I.imagelink, category.name AS cname FROM");
        sql.append(" product P join productgallery I on P.id = I.productid join category on P.categoryid = category.id join supplier S on P.supplierid = S.id");
        sql.append(" WHERE P.status = 1 and category.code = ? and S.code = ?");

        if (pageble.getSorter() != null && StringUtils.isNotBlank(pageble.getSorter().getSortName()) && StringUtils.isNotBlank(pageble.getSorter().getSortBy())) {
            sql.append(" GROUP BY P.id");
            sql.append(" ORDER BY " + pageble.getSorter().getSortName() + " " + pageble.getSorter().getSortBy());
            sql.append(" LIMIT " + pageble.getOffset() + ", " + pageble.getLimit());
        } else if (pageble.getOffset() != null && pageble.getLimit() != null) {
            sql.append(" GROUP BY P.id");
            sql.append(" LIMIT " + pageble.getOffset() + ", " + pageble.getLimit());
        }
        return query(sql.toString(), new ProductMapper(), category, supplier);
    }

    @Override
    public List<ProductModel> findAllByCategoryCode(String code, IPageble pageble) {
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT P.*, I.imagelink, category.name AS cname FROM");
        sql.append(" product P join productgallery I on P.id = I.productid join category on P.categoryid = category.id");
        sql.append(" WHERE P.status = 1 and category.code = ?");

        if (pageble.getSorter() != null && StringUtils.isNotBlank(pageble.getSorter().getSortName()) && StringUtils.isNotBlank(pageble.getSorter().getSortBy())) {
            sql.append(" GROUP BY P.id");
            sql.append(" ORDER BY " + pageble.getSorter().getSortName() + " " + pageble.getSorter().getSortBy());
            sql.append(" LIMIT " + pageble.getOffset() + ", " + pageble.getLimit());
        } else if (pageble.getOffset() != null && pageble.getLimit() != null) {
            sql.append(" GROUP BY P.id");
            sql.append(" LIMIT " + pageble.getOffset() + ", " + pageble.getLimit());
        }
        return query(sql.toString(), new ProductMapper(), code);
    }
}
