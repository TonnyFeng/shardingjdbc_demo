package com.mysql.sharding.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
@MapperScan("com.mysql.sharding.demo.dao")
public class ShardingSphereDemo3 {

    public static void main(String[] args) {
        SpringApplication.run(ShardingSphereDemo3.class, args);
    }

}
