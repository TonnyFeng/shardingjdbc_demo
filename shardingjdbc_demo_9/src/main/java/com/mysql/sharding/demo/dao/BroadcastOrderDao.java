package com.mysql.sharding.demo.dao;

import com.mysql.sharding.demo.entity.BroadcastOrder;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface BroadcastOrderDao extends Mapper<BroadcastOrder> {
    List<BroadcastOrder> queryMyOrder(@Param("userId") Long userId);
}
