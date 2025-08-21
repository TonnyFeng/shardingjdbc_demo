package com.mysql.sharding.demo.controller;


import com.mysql.sharding.demo.entity.OrderAutoInterval;
import com.mysql.sharding.demo.service.OrderAutoIntervalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class OrderAutoIntervalController
{

    @Autowired
    private OrderAutoIntervalService orderAutoIntervalService;

    /**
     * 功能描述： 查询时间区间的数据
     *
     * @param createStart 开始时间
     * @param createEnd   结束时间
     * @return 返回查询结果
     */
    @PostMapping("queryOrderAutoIntervalList")
    public List<OrderAutoInterval> queryOrderAutoIntervalList(String createStart, String createEnd)
    {
        return orderAutoIntervalService.queryOrderAutoIntervalList(createStart, createEnd);
    }

    /**
     * 功能描述： 保存自动时间分片的订单数据
     *
     * @param orderAutoInterval 待保存的数据
     * @return 返回保存结果
     */
    @PostMapping("saveOrderAutoInterval")
    public OrderAutoInterval saveOrderAutoInterval(@RequestBody OrderAutoInterval orderAutoInterval)
    {
        return orderAutoIntervalService.saveOrderAutoInterval(orderAutoInterval);
    }

    /**
     * 功能描述： 根据订单ID来获取数据
     *
     * @param orderId 订单流水ID
     * @return 返回查询结果
     */
    @PostMapping("getOrderAutoInterval")
    public OrderAutoInterval getOrderAutoInterval(Long orderId)
    {
        return orderAutoIntervalService.getOrderAutoInterval(orderId);
    }
}
