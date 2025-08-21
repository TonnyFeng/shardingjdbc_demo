package com.mysql.sharding.demo.service;


import com.mysql.sharding.demo.dao.OrderAutoIntervalDao;
import com.mysql.sharding.demo.entity.OrderAutoInterval;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderAutoIntervalService {

    @Autowired
    private OrderAutoIntervalDao orderAutoIntervalDao;

    /**
     * 功能描述： 查询时间区间的数据
     *
     * @param createStart 开始时间
     * @param createEnd   结束时间
     * @return 返回查询结果
     */
    public List<OrderAutoInterval> queryOrderAutoIntervalList(String createStart, String createEnd) {
        return orderAutoIntervalDao.queryOrderAutoIntervalList(createStart, createEnd);
    }

    /**
     * 功能描述： 根据订单ID来获取数据
     *
     * @param orderId 订单流水ID
     * @return 返回查询结果
     */
    public OrderAutoInterval getOrderAutoInterval(Long orderId) {
        return orderAutoIntervalDao.selectByPrimaryKey(orderId);
    }

    /**
     * 功能描述： 保存自动时间分片的订单数据
     *
     * @param orderAutoInterval 待保存的数据
     * @return 返回保存结果
     */
    public OrderAutoInterval saveOrderAutoInterval(OrderAutoInterval orderAutoInterval) {
        orderAutoIntervalDao.insertSelective(orderAutoInterval);
        return orderAutoInterval;
    }

}
