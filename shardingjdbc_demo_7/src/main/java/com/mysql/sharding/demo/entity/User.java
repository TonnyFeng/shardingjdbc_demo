package com.mysql.sharding.demo.entity;


import jakarta.persistence.Column;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Table(name = "t_user")
public class User {

    /**
     * 用户流水ID
     */
    @Id
    @Column(name = "user_id")
    private Long userId;

    /**
     * 用户名称
     */
    @Column(name = "user_name")
    private String userName;

    /**
     * 用户名称
     */
    @Column(name = "user_name_assisted")
    private String userNameAssisted;

    /**
     * 用户名称
     */
    @Column(name = "user_name_like")
    private String userNameLike;

    /**
     * 用户密码
     */
    @Column(name = "pwd")
    private String pwd;

}

