package com.mysql.sharding.demo.controller;

import com.mysql.sharding.demo.entity.BroadcastOrder;
import com.mysql.sharding.demo.service.BroadcastOrderService;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class BroadcastOrderController {

    @Resource
    private BroadcastOrderService broadcastOrderService;

    /**
     * 功能描述： 实现新增订单
     *
     * @param order 订单的实体
     */
    @PostMapping("saveBroadcastOrder")
    public void saveOrder(@RequestBody BroadcastOrder order) {
        broadcastOrderService.saveOrder(order);
    }


    /**
     * 功能描述： 根据订单ID&用户ID来获取订单数据
     *
     * @param orderId 订单流水ID
     * @param userId  用户ID
     * @return 返回查询结果
     */
    @PostMapping("getBroadcastOrderByOrderIdUserId")
    public BroadcastOrder getOrderByOrderIdUserId(@RequestParam("orderId") Long orderId,
                                         @RequestParam("userId") Long userId) {
        return broadcastOrderService.getOrderByOrderIdUserId(orderId, userId);
    }

    /**
     * 功能描述： 根据用户ID来获取订单数据
     *
     * @param userId 用户ID
     * @return 返回查询结果
     */
    @PostMapping("queryMyBroadcastOrder")
    public List<BroadcastOrder> queryMyOrder(@RequestParam("userId") Long userId) {
        return broadcastOrderService.queryMyOrder(userId);
    }

}
