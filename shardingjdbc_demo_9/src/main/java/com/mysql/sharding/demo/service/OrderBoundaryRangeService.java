package com.mysql.sharding.demo.service;

import com.mysql.sharding.demo.dao.OrderBoundaryRangeDao;
import com.mysql.sharding.demo.entity.OrderBoundaryRange;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderBoundaryRangeService {

    @Autowired
    private OrderBoundaryRangeDao orderBoundaryRangeDao;

    /**
     * 功能描述： 新增边界分片数据的订单数据
     *
     * @param orderBoundaryRange
     * @return
     */
    public OrderBoundaryRange saveOrderBoundaryRange(OrderBoundaryRange orderBoundaryRange) {
        orderBoundaryRangeDao.insertSelective(orderBoundaryRange);
        return orderBoundaryRange;
    }

    /**
     * 功能描述： 获取边界分片的订单数据
     *
     * @param orderId
     * @return
     */
    public OrderBoundaryRange getOrderBoundaryRange(Long orderId) {
        return orderBoundaryRangeDao.selectByPrimaryKey(orderId);
    }

}