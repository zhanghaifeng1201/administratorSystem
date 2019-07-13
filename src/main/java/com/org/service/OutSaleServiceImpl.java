package com.org.service;
import com.org.dao.OutSaleDao;
import com.org.entity.OutSale;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service(value = "OutSaleService")
public class OutSaleServiceImpl implements OutSaleService {
    @Resource
    OutSaleDao outSaleDao;

    public List<OutSale> selectList() {
        return outSaleDao.selectList();
    }

    public void insertOne(OutSale outSale) {
        outSaleDao.insertOne(outSale);
    }
}
