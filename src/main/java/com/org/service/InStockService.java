package com.org.service;
import com.org.entity.InStock;

import java.util.List;

public interface InStockService {
   public void insertOne(InStock inStock);
   public List<InStock> selectList();
   public InStock selectById(Integer id);
   public List<InStock> findByPage(int start,int size);
   public  int  selectCount();
   public  int updateById(InStock record);
}
