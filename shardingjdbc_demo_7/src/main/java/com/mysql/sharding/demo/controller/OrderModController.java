package com.mysql.sharding.demo.controller;


import com.mysql.sharding.demo.entity.OrderMod;
import com.mysql.sharding.demo.service.OrderModService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class OrderModController
{

    @Autowired
    private OrderModService orderModService;

    /**
     * 功能描述： 实现保存订单信息
     *
     * @param orderMod 订单信息
     * @return 返回保存以后的结果
     */
    @PostMapping("saveOrderMod")
    public OrderMod saveOrderMod(@RequestBody OrderMod orderMod)
    {
        return orderModService.saveOrderMod(orderMod);
    }

    /**
     * 功能描述： 实现保存订单信息
     *
     * @param orderId 订单流水ID
     * @return 返回查询以后的结果
     */
    @PostMapping("getOrderMod")
    public OrderMod getOrderMod(String orderId)
    {
        return orderModService.getOrderMod(orderId);
    }

}
