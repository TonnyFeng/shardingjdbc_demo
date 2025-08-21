package com.mysql.sharding.demo.service;

import com.mysql.sharding.demo.dao.OrderDao;
import com.mysql.sharding.demo.dao.OrderItemDao;
import com.mysql.sharding.demo.entity.Order;
import com.mysql.sharding.demo.entity.OrderItem;
import jakarta.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(rollbackFor = {Exception.class})
public class OrderService {

    @Autowired
    private OrderDao orderDao;

    @Autowired
    private OrderItemDao orderItemDao;

    /**
     * 功能描述： 实现新增订单
     *
     * @param order 订单的实体
     */
    @Transactional
    public void saveOrder(Order order) {
        orderDao.insertSelective(order);
        for (OrderItem orderItem : order.getOrderItems()) {
            orderItem.setOrderId(order.getOrderId());
            orderItem.setUserId(order.getUserId());
            orderItemDao.insertSelective(orderItem);
        }
    }

    /**
     * 功能描述： 根据订单ID来获取订单数据
     *
     * @param orderId 订单流水ID
     * @return 返回查询结果
     */
    public Order getOrderByOrderId(Long orderId) {
        Order param = new Order();
        param.setOrderId(orderId);
        Order order = orderDao.selectOne(param);
        OrderItem orderItem = new OrderItem();
        orderItem.setOrderId(orderId);
        List<OrderItem> orderItemList = orderItemDao.select(orderItem);
        order.setOrderItems(orderItemList);
        return order;
    }

    /**
     * 功能描述： 根据订单ID来获取订单数据
     *
     * @param orderId 订单流水ID
     * @return 返回查询结果
     */
    public Order getOrderByOrderIdUserId(Long orderId, Long userId) {
        Order param = new Order();
        param.setOrderId(orderId);
        param.setUserId(userId);
        Order order = orderDao.selectOne(param);
        OrderItem orderItem = new OrderItem();
        orderItem.setOrderId(orderId);
        orderItem.setUserId(userId);
        List<OrderItem> orderItemList = orderItemDao.select(orderItem);
        order.setOrderItems(orderItemList);
        return order;
    }

    public List<Order> queryMyOrder(Long userId) {
        List<Order> orders = orderDao.queryMyOrder(userId);
        return orders;
    }
}
