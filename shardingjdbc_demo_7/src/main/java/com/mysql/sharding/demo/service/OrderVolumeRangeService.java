package com.mysql.sharding.demo.service;


import com.mysql.sharding.demo.dao.OrderVolumeRangeDao;
import com.mysql.sharding.demo.entity.OrderVolumeRange;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderVolumeRangeService
{

    @Autowired
    private OrderVolumeRangeDao orderVolumeRangeDao;

    /**
     * 功能描述： 查询数据
     *
     * @param orderId 订单流水ID
     * @return 返回查询的结果
     */
    public OrderVolumeRange getOrderVolumeRange(Long orderId)
    {
        return orderVolumeRangeDao.selectByPrimaryKey(orderId);
    }

    /**
     * 功能描述： 保存数据
     *
     * @param orderVolumeRange 待保存的数据
     * @return 返回保存的结果
     */
    public OrderVolumeRange saveOrderVolumeRange(OrderVolumeRange orderVolumeRange)
    {
        orderVolumeRangeDao.insertSelective(orderVolumeRange);
        return orderVolumeRange;
    }

}
