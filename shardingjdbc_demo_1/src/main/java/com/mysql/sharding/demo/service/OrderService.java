package com.mysql.sharding.demo.service;

import com.mysql.sharding.demo.dao.OrderDao;
import com.mysql.sharding.demo.entity.Order;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(rollbackFor = {Exception.class})
public class OrderService {

    @Resource
    private OrderDao orderDao;

    /**
     * 功能描述： 实现新增订单
     * @param order 订单的实体
     */
    public void saveOrder(Order order){
        orderDao.insertSelective(order);
    }

    /**
     * 功能描述： 根据订单ID来获取订单数据
     * @param orderId 订单流水ID
     * @return 返回查询结果
     */
    public Order getOrderByOrderId( Long orderId){
        return orderDao.selectByPrimaryKey(orderId);
    }

}
