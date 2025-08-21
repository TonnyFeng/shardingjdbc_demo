package com.mysql.sharding.demo.controller;

import com.mysql.sharding.demo.entity.OrderBoundaryRange;
import com.mysql.sharding.demo.service.OrderBoundaryRangeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class OrderBoundaryRangeController
{

    @Autowired
    private OrderBoundaryRangeService orderBoundaryRangeService;

    /**
     * 功能描述： 获取边界分片的订单数据
     *
     * @param orderId
     * @return
     */
    @PostMapping("getOrderBoundaryRange")
    public OrderBoundaryRange getOrderBoundaryRange(Long orderId)
    {
        return orderBoundaryRangeService.getOrderBoundaryRange(orderId);
    }

    /**
     * 功能描述： 新增边界分片数据的订单数据
     *
     * @param orderBoundaryRange
     * @return
     */
    @PostMapping("saveOrderBoundaryRange")
    public OrderBoundaryRange saveOrderBoundaryRange(@RequestBody OrderBoundaryRange orderBoundaryRange)
    {
        return orderBoundaryRangeService.saveOrderBoundaryRange(orderBoundaryRange);
    }

}