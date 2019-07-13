package com.org.entity;

public class OutSale {
    private int id;
    private int oldid;//入库id
    private String username;//经办人
    private String out_name;//产品名称
    private String out_brand;//品牌
    private String model_size;//型号规格
    private Double out_price;//销售价格
    private String along_to;//所属类别
    private int out_number;//数量
    private String client;//客户
    private String out_unit;//单位
    private String time;//时间
    private double money;//销售总额
    private double profit;//盈利
    private String out_des;//备注

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOldid() {
        return oldid;
    }

    public void setOldid(int oldid) {
        this.oldid = oldid;
    }

    public String getUsername() {
        return out_name;
    }

    public void setUsername(String out_name) {
        this.out_name = out_name;
    }

    public String getOut_name() {
        return username;
    }

    public void setOut_name(String username) {
        this.username = username;
    }

    public String getOut_brand() {
        return out_brand;
    }

    public void setOut_brand(String out_brand) {
        this.out_brand = out_brand;
    }

    public String getModel_size() {
        return model_size;
    }

    public void setModel_size(String model_size) {
        this.model_size = model_size;
    }

    public Double getOut_price() {
        return out_price;
    }

    public void setOut_price(Double out_price) {
        this.out_price = out_price;
    }

    public String getAlong_to() {
        return along_to;
    }

    public void setAlong_to(String along_to) {
        this.along_to = along_to;
    }

    public int getOut_number() {
        return out_number;
    }

    public void setOut_number(int out_number) {
        this.out_number = out_number;
    }

    public String getClient() {
        return client;
    }

    public void setClient(String client) {
        this.client = client;
    }

    public String getOut_unit() {
        return out_unit;
    }

    public void setOut_unit(String out_unit) {
        this.out_unit = out_unit;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }

    public double getProfit() {
        return profit;
    }

    public void setProfit(double profit) {
        this.profit = profit;
    }

    public String getOut_des() {
        return out_des;
    }

    public void setOut_des(String out_des) {
        this.out_des = out_des;
    }

    public OutSale() {
    }

    public OutSale(int oldid, String username, String out_name, String out_brand, String model_size, Double out_price, String along_to, int out_number, String client, String out_unit, String time, double money, double profit, String out_des) {
        this.oldid = oldid;
        this.username = username;
        this.out_name = out_name;
        this.out_brand = out_brand;
        this.model_size = model_size;
        this.out_price = out_price;
        this.along_to = along_to;
        this.out_number = out_number;
        this.client = client;
        this.out_unit = out_unit;
        this.time = time;
        this.money = money;
        this.profit = profit;
        this.out_des = out_des;
    }
}
