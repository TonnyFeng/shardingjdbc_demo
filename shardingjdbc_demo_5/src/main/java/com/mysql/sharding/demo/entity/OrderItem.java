package com.mysql.sharding.demo.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.Column;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @author linzf
 * @since 2020/12/14
 * 类描述：
 */
@Data
@Table(name = "t_order_item")
public class OrderItem implements Serializable {
    /**
     * 主键
     */
    @Id
    @Column(name = "id")
    private Long id;
    /**
     * 订单明细流水ID
     */
    @Column(name = "order_item_id")
    private Long orderItemId;

    /**
     * 订单流水ID
     */
    @Column(name = "order_id")
    private Long orderId;


    /**
     * 用户流水ID
     */
    @Column(name = "user_id")
    private Long userId;

    /**
     * 卖家流水ID
     */
    @Column(name = "seller_id")
    private Long sellerId;

    /**
     * 订单创建时间
     */
    @Column(name = "create_time")
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "UTC")
    private Date createTime;
}

