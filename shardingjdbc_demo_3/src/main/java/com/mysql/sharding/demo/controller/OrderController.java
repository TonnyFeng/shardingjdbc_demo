package com.mysql.sharding.demo.controller;

import com.mysql.sharding.demo.entity.Order;
import com.mysql.sharding.demo.service.OrderService;
import jakarta.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class OrderController {

    @Autowired
    private OrderService orderService;

    /**
     * 功能描述： 实现新增订单
     *
     * @param order 订单的实体
     */
    @PostMapping("saveOrder")
    public void saveOrder(@RequestBody Order order) {
        orderService.saveOrder(order);
    }

    /**
     * 功能描述： 根据订单ID来获取订单数据
     *
     * @param orderId 订单流水ID
     * @return 返回查询结果
     */
    @PostMapping("getOrderByOrderId")
    public Order getOrderByOrderId(@RequestParam("orderId") Long orderId) {
        return orderService.getOrderByOrderId(orderId);
    }

    /**
     * 功能描述： 根据订单ID&用户ID来获取订单数据
     *
     * @param orderId 订单流水ID
     * @param userId  用户ID
     * @return 返回查询结果
     */
    @PostMapping("getOrderByOrderIdUserId")
    public Order getOrderByOrderIdUserId(@RequestParam("orderId") Long orderId,
                                         @RequestParam("userId") Long userId) {
        return orderService.getOrderByOrderIdUserId(orderId, userId);
    }

    /**
     * 功能描述： 根据用户ID来获取订单数据
     *
     * @param userId 用户ID
     * @return 返回查询结果
     */
    @PostMapping("queryMyOrder")
    public List<Order> queryMyOrder(@RequestParam("userId") Long userId) {
        return orderService.queryMyOrder(userId);
    }

}
