package com.ecostore.model;

public class OrdersModel extends AbstractModel {
    private UserModel userId;
    private PaymentModel paymentId;
    private String customerName;
    private String phone;
    private String address;
    private String message;
    private Long totalPrice;
    private int status;

    public OrdersModel() {
    }

    public UserModel getUserId() {
        return userId;
    }

    public void setUserId(UserModel userId) {
        this.userId = userId;
    }

    public PaymentModel getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(PaymentModel paymentId) {
        this.paymentId = paymentId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Long getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Long totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
