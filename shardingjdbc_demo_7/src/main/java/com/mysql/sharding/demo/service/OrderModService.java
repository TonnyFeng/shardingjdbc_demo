package com.mysql.sharding.demo.service;


import com.mysql.sharding.demo.dao.OrderModDao;
import com.mysql.sharding.demo.entity.OrderMod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author linzf
 * @since 2021/11/20
 * 类描述：
 */
@Service
public class OrderModService
{

    @Autowired
    private OrderModDao orderModDao;

    /**
     * 功能描述： 实现保存订单信息
     *
     * @param orderMod 订单信息
     * @return 返回保存以后的结果
     */
    public OrderMod saveOrderMod(OrderMod orderMod)
    {
        orderModDao.insertSelective(orderMod);
        return orderMod;
    }

    /**
     * 功能描述： 实现保存订单信息
     *
     * @param orderId 订单流水ID
     * @return 返回查询以后的结果
     */
    public OrderMod getOrderMod(String orderId)
    {
        return orderModDao.selectByPrimaryKey(orderId);
    }

}
