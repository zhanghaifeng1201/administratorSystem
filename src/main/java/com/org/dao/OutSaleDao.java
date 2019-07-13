package com.org.dao;
import com.org.entity.InStock;
import com.org.entity.OutSale;

import java.util.List;

public interface OutSaleDao {
    /**
     * 根据主键删除一条用户数据
     * @param id
     * @return
     */
    int deleteById(Integer id);
    /**
     * 插入一条进货单数据 完整
     * @param outSale
     * @return
     */
    int insert(OutSale outSale);
    /**
     * 插入一条用户数据 ，可以不完整
     * @param OutSale
     * @return
     */
    int insertOne(OutSale OutSale);
    /**
     * 根据主键查询一条用户数据
     * @param id
     * @return
     */
    InStock selectById(Integer id);
    /**
     * 根据主键更新一条用户数据，可以不完整 -
     * @param OutSale
     * @return
     */
    int updateById(OutSale OutSale);

    /**
     * 查询所有用户数据
     * @return
     */
    List<OutSale> selectList();
}
