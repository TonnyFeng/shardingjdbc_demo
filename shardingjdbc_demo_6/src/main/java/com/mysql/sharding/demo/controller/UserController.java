package com.mysql.sharding.demo.controller;

import com.mysql.sharding.demo.entity.User;
import com.mysql.sharding.demo.service.UserService;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;


/**
 * @author linzf
 * @since 2021/11/16
 * 类描述：
 */
@RestController
public class UserController {

    @Resource
    private UserService userService;

    /**
     * 功能描述： 根据用户流水ID来删除用户
     *
     * @param userId
     */
    @PostMapping("deleteUser")
    public void deleteUser(Long userId) {
        userService.deleteUser(userId);
    }

    /**
     * 功能描述： 更新用户流水ID
     *
     * @param user 用户实体
     * @return 返回更新结果
     */
    @PostMapping("updateUser")
    public User updateUser(@RequestBody User user) {
        return userService.updateUser(user);
    }

    /**
     * 功能描述： 根据用户名称和用户密码查询用户数据
     *
     * @param user 用户信息
     * @return 返回查询结果
     */
    @PostMapping("queryUser")
    public User queryUser(@RequestBody User user) {
        return userService.queryUser(user);
    }

    /**
     * 功能描述： 根据用户名称和用户密码查询用户数据
     *
     * @param user 用户信息
     * @return 返回查询结果
     */
    @PostMapping("queryUserLike")
    public User queryUserLike(@RequestBody User user) {
        return userService.queryUserLike(user);
    }

    /**
     * 功能描述： 实现新增用户
     *
     * @param user 用户实体
     * @return 返回新增的结果
     */
    @PostMapping("saveUser")
    public User saveUser(@RequestBody User user) {
        return userService.saveUser(user);
    }
}

