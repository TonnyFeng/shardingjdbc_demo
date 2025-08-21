package com.mysql.sharding.demo.dao;

import com.mysql.sharding.demo.entity.Order;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface OrderDao extends Mapper<Order> {
    List<Order> queryMyOrder(@Param("userId") Long userId);
}
