package com.mysql.sharding.demo.entity;


import jakarta.persistence.Column;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

import java.io.Serializable;

/**
 * @author fw
 * @version 1.0
 * @title Dict
 * @Description
 * @create 2025/8/21 17:10
 */
@Data
@Table(name = "t_dict")
public class Dict implements Serializable
{

    /**
     * 字典流水ID
     */
    @Id
    @Column(name = "dict_id")
    private Long dictId;

    /**
     * 字典类型
     */
    @Column(name = "dict_type")
    private String dictType;

    /**
     * 字典编码
     */
    @Column(name = "dict_code")
    private String dictCode;

    /**
     * 字典描述
     */
    @Column(name = "dict_text")
    private String dictText;

    /**
     * 字典值
     */
    @Column(name = "dict_value")
    private String dictValue;

}
