package com.ecostore.model;

public class OrderDetailsModel {
    private OrdersModel order;
    private ProductModel product;
    private Long unitPrice;
    private int quantity;
    private Long totalPrice;

    public OrderDetailsModel() {
    }

    public OrdersModel getOrder() {
        return order;
    }

    public void setOrder(OrdersModel order) {
        this.order = order;
    }

    public ProductModel getProduct() {
        return product;
    }

    public void setProduct(ProductModel product) {
        this.product = product;
    }

    public Long getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(Long unitPrice) {
        this.unitPrice = unitPrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Long getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Long totalPrice) {
        this.totalPrice = totalPrice;
    }
}
