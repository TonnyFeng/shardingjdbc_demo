package com.mysql.sharding.demo.controller;


import com.mysql.sharding.demo.entity.OrderVolumeRange;
import com.mysql.sharding.demo.service.OrderVolumeRangeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class OrderVolumeRangeController
{

    @Autowired
    private OrderVolumeRangeService orderVolumeRangeService;

    /**
     * 功能描述： 保存数据
     *
     * @param orderVolumeRange 待保存的数据
     * @return 返回保存的结果
     */
    @PostMapping("saveOrderVolumeRange")
    public OrderVolumeRange saveOrderVolumeRange(@RequestBody OrderVolumeRange orderVolumeRange)
    {
        return orderVolumeRangeService.saveOrderVolumeRange(orderVolumeRange);
    }

    /**
     * 功能描述： 查询数据
     *
     * @param orderId 订单流水ID
     * @return 返回查询的结果
     */
    @PostMapping("getOrderVolumeRange")
    public OrderVolumeRange getOrderVolumeRange(Long orderId)
    {
        return orderVolumeRangeService.getOrderVolumeRange(orderId);
    }

}
