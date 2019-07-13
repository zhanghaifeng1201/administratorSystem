package com.org.service;

import com.org.entity.OutSale;

import java.util.List;

public interface OutSaleService {
    public void insertOne(OutSale outSale);
    List<OutSale> selectList();
}
