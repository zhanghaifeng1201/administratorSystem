package com.org.dao;

import com.org.entity.InStock;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface InStockDao {
    /**
     * 根据主键删除一条用户数据
     * @param id
     * @return
     */
    int deleteById(Integer id);
    /**
     * 插入一条进货单数据 完整
     * @param inStock
     * @return
     */
    int insert(InStock inStock);
    /**
     * 插入一条用户数据 ，可以不完整
     * @param inStock
     * @return
     */
    int insertOne(InStock inStock);
    /**
     * 根据主键查询一条用户数据
     * @param id
     * @return
     */
    InStock selectById(Integer id);
    /**
     * 根据主键更新一条用户数据，可以不完整 -
     * @param record
     * @return
     */
    int updateById(InStock record);

    /**
     * 查询所有数据
     * @return
     */
    List<InStock> selectList();

    /**
     * 分页查询
     * @param start
     * @param size
     * @return
     */
    List<InStock> findByPage(@Param("start") int start, @Param("size")int size);

    /**
     * 查询总数
     * @return
     */
    int  selectCount();
}
