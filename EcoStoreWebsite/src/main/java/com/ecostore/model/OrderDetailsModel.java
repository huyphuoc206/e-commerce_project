package com.ecostore.model;

public class OrderDetailsModel {
    private OrdersModel orderId;
    private ProductModel productId;
    private Long unitPrice;
    private int quantity;
    private Long totalPrice;

    public OrderDetailsModel() {
    }

    public OrdersModel getOrderId() {
        return orderId;
    }

    public void setOrderId(OrdersModel orderId) {
        this.orderId = orderId;
    }

    public ProductModel getProductId() {
        return productId;
    }

    public void setProductId(ProductModel productId) {
        this.productId = productId;
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
