package com.org.entity;

import java.util.Date;

public class InStock {
    private int id;
    private int userid;
    private Double purchase_price;//进货价格
    private Double trade_price;//参考价格
    private Double retail_price;//参考零售价
    private String brand;//品牌
    private String item;//类别
    private String goods_name;//名称
    private String model_size;//型号
    private String unit;//单位
    private double number;//数量
    private String des;//备注
    private String time;//时间
    private double money;//进货花费总额

    public void setMoney(double money) {
        this.money = money;
    }

    public double getMoney() {
        return money;
    }

    public InStock() {
    }

    public InStock( int userid, Double purchase_price, Double trade_price, Double retail_price, String brand, String item, String goods_name, String model_size, String unit, double number, String des, String  time, double money) {


        this.userid = userid;
        this.purchase_price = purchase_price;
        this.trade_price = trade_price;
        this.retail_price = retail_price;
        this.brand = brand;
        this.item = item;
        this.goods_name = goods_name;
        this.model_size = model_size;
        this.unit = unit;
        this.number = number;
        this.des = des;
        this.time = time;
        this.money= money;
    }

    public int getId() {

        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public Double getPurchase_price() {
        return purchase_price;
    }

    public void setPurchase_price(Double purchase_price) {
        this.purchase_price = purchase_price;
    }

    public Double getTrade_price() {
        return trade_price;
    }

    public void setTrade_price(Double trade_price) {
        this.trade_price = trade_price;
    }

    public Double getRetail_price() {
        return retail_price;
    }

    public void setRetail_price(Double retail_price) {
        this.retail_price = retail_price;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    public String getGoods_name() {
        return goods_name;
    }

    public void setGoods_name(String goods_name) {
        this.goods_name = goods_name;
    }

    public String getModel_size() {
        return model_size;
    }

    public void setModel_size(String model_size) {
        this.model_size = model_size;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public double getNumber() {
        return number;
    }

    public void setNumber(double number) {
        this.number = number;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}