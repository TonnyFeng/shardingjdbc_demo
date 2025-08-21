package com.mysql.sharding.demo.service;


import com.mysql.sharding.demo.dao.OrderHashModDao;
import com.mysql.sharding.demo.entity.OrderHashMod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.UUID;

/**
 * @author fw
 * @version 1.0
 * @title OrderHashModService
 * @Description
 * @create 2025/8/21 15:34
 */
@Service
public class OrderHashModService
{

    @Autowired
    private OrderHashModDao orderHashModDao;

    /**
     * 功能描述： 根据订单流水ID来查询订单分片的数据
     *
     * @param orderId 订单流水ID
     * @return 返回查询结果
     */
    public OrderHashMod getOrderHashMod(String orderId)
    {
        return orderHashModDao.selectByPrimaryKey(orderId);
    }

    /**
     * 功能描述： 保存订单哈希分片的数据
     *
     * @param orderHashMod 待保存的数据
     * @return 返回保存结果
     */
    public OrderHashMod saveOrderHashMod(OrderHashMod orderHashMod)
    {
        orderHashMod.setOrderId(UUID.randomUUID().toString().replaceAll("-", ""));
        orderHashModDao.insertSelective(orderHashMod);
        return orderHashMod;
    }

}
