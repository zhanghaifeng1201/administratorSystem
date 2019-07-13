package com.org.service;
import com.org.dao.InStockDao;
import com.org.entity.InStock;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("inStockService")
public class InStockServiceImpl implements InStockService {
    @Resource
    private InStockDao inStockDao;
    public void insertOne(InStock inStock) {
        inStockDao.insertOne(inStock);
    }

    public List<InStock> selectList() {
        return inStockDao.selectList();
    }

    public InStock selectById(Integer id) {
        return inStockDao.selectById(id);
    }

    public List<InStock> findByPage(int start,int size){
        return inStockDao.findByPage(start,size);
    };

    public int selectCount() {
        return inStockDao.selectCount();
    }

    public int updateById(InStock record)
    {
        return inStockDao.updateById(record);
    }
}
