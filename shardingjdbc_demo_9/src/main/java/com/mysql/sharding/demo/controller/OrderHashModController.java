package com.mysql.sharding.demo.controller;


import com.mysql.sharding.demo.entity.OrderHashMod;
import com.mysql.sharding.demo.service.OrderHashModService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author fw
 * @version 1.0
 * @title OrderHashModController
 * @Description
 * @create 2025/8/21 15:35
 */
@RestController
public class OrderHashModController {

    @Autowired
    private OrderHashModService orderHashModService;

    /**
     * 功能描述： 保存订单哈希分片的数据
     *
     * @param orderHashMod 待保存的数据
     * @return 返回保存结果
     */
    @PostMapping("saveOrderHashMod")
    public OrderHashMod saveOrderHashMod(@RequestBody OrderHashMod orderHashMod) {
        return orderHashModService.saveOrderHashMod(orderHashMod);
    }

    /**
     * 功能描述： 根据订单流水ID来查询订单分片的数据
     *
     * @param orderId 订单流水ID
     * @return 返回查询结果
     */
    @PostMapping("getOrderHashMod")
    public OrderHashMod getOrderHashMod(String orderId) {
        return orderHashModService.getOrderHashMod(orderId);
    }

}
