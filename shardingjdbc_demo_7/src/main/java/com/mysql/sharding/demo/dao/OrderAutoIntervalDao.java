package com.mysql.sharding.demo.dao;


import com.mysql.sharding.demo.entity.OrderAutoInterval;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

/**
 * @author fw
 * @version 1.0
 * @title OrderAutoIntervalDao
 * @Description
 * @create 2025/8/21 15:44
 */
public interface OrderAutoIntervalDao extends Mapper<OrderAutoInterval> {
    /**
     * 功能描述： 查询时间区间的数据
     *
     * @param createStart 开始时间
     * @param createEnd   结束时间
     * @return 返回查询结果
     */
    List<OrderAutoInterval> queryOrderAutoIntervalList(@Param("createStart") String createStart, @Param("createEnd") String createEnd);
}
