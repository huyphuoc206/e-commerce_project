package com.ecostore.model;

public class ProductModel extends AbstractModel {
    private String name;
    private Long price;
    private int discount;
    private String description;
    private int status;
    private CategoryModel categoryid;
    private SupplierModel supplierid;
    private String image;

    public ProductModel() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public CategoryModel getCategoryid() {
        return categoryid;
    }

    public void setCategoryid(CategoryModel categoryid) {
        this.categoryid = categoryid;
    }

    public SupplierModel getSupplierid() {
        return supplierid;
    }

    public void setSupplierid(SupplierModel supplierid) {
        this.supplierid = supplierid;
    }

}
