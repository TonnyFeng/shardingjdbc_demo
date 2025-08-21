package com.mysql.sharding.demo.entity;


import jakarta.persistence.Column;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

import java.util.Date;

@Data
@Table(name = "t_order_mod")
public class OrderMod
{

    /**
     * 订单流水ID
     */
    @Id
    @Column(name = "order_id")
    private Long orderId;

    /**
     * 用户流水ID
     */
    @Column(name = "user_Id")
    private Long userId;

    /**
     * 订单编号
     */
    @Column(name = "order_no")
    private String orderNo;

    /**
     * 订单创建时间
     */
    @Column(name = "create_time")
    private Date createTime;

}
