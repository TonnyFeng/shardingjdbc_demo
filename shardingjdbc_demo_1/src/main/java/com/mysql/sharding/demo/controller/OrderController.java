package com.mysql.sharding.demo.controller;

import com.mysql.sharding.demo.entity.Order;
import com.mysql.sharding.demo.service.OrderService;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.*;

@RestController
public class OrderController {

    @Resource
    private OrderService orderService;

    /**
     * 功能描述： 实现新增订单
     * @param order 订单的实体
     */
    @PostMapping("saveOrder")
    public void saveOrder(@RequestBody Order order){
        orderService.saveOrder(order);
    }

    /**
     * 功能描述： 根据订单ID来获取订单数据
     * @param orderId 订单流水ID
     * @return 返回查询结果
     */
    @PostMapping("getOrderByOrderId")
    public Order getOrderByOrderId( @RequestParam("orderId") Long orderId){
        return orderService.getOrderByOrderId(orderId);
    }

}
