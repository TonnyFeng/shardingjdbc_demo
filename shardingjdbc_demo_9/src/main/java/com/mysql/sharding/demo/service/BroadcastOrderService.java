package com.mysql.sharding.demo.service;

import com.mysql.sharding.demo.dao.BroadcastOrderDao;
import com.mysql.sharding.demo.dao.OrderDao;
import com.mysql.sharding.demo.dao.OrderItemDao;
import com.mysql.sharding.demo.entity.BroadcastOrder;
import com.mysql.sharding.demo.entity.Order;
import com.mysql.sharding.demo.entity.OrderItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(rollbackFor = {Exception.class})
public class BroadcastOrderService {

    @Autowired
    private BroadcastOrderDao broadcastOrderDao;

    @Autowired
    private OrderItemDao orderItemDao;

    /**
     * 功能描述： 实现新增订单
     *
     * @param order 订单的实体
     */
    @Transactional
    public void saveOrder(BroadcastOrder order) {
        broadcastOrderDao.insertSelective(order);
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
    public BroadcastOrder getOrderByOrderIdUserId(Long orderId, Long userId) {
        BroadcastOrder param = new BroadcastOrder();
        param.setOrderId(orderId);
        param.setUserId(userId);
        BroadcastOrder order = broadcastOrderDao.selectOne(param);
        OrderItem orderItem = new OrderItem();
        orderItem.setOrderId(orderId);
        orderItem.setUserId(userId);
        List<OrderItem> orderItemList = orderItemDao.select(orderItem);
        order.setOrderItems(orderItemList);
        return order;
    }

    public List<BroadcastOrder> queryMyOrder(Long userId) {
        List<BroadcastOrder> orders = broadcastOrderDao.queryMyOrder(userId);
        return orders;
    }
}
