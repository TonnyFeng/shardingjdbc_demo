package com.mysql.sharding.demo.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.Column;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
@Table(name = "t_hit")
public class Hit implements Serializable
{

    /**
     * 强制分片流水ID
     */
    @Id
    @Column(name = "hit_id")
    private Long hitId;

    /**
     * 用户流水ID
     */
    @Column(name = "user_Id")
    private Long userId;

    /**
     * 强制分片编号
     */
    @Column(name = "hit_no")
    private String hitNo;

    /**
     * 创建时间
     */
    @Column(name = "create_time")
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "UTC")
    private Date createTime;

}