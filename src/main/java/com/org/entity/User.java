package com.org.entity;
/**
 * 用户实体类
 * 对应数据表user
 */
public class User {
    private Integer id;

    private String username;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getStituo() {
        return stituo;
    }

    public void setStituo(int stituo) {
        this.stituo = stituo;
    }

    private String password;

    private int stituo;

    public User(Integer id, String username, String password, int stituo) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.stituo = stituo;
    }

    public User() {

    }
}