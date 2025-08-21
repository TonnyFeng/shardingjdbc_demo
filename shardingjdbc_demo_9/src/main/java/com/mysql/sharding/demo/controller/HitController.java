package com.mysql.sharding.demo.controller;


import com.mysql.sharding.demo.entity.Hit;
import com.mysql.sharding.demo.service.HitService;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HitController
{

    @Resource
    private HitService hitService;

    /**
     * 功能描述： 实现新增强制分片数据
     *
     * @param hit 强制分片实体
     */
    @PostMapping("saveHit")
    public void saveHit(@RequestBody Hit hit)
    {
        hitService.saveHit(hit);
    }

    /**
     * 功能描述： 强制分片的实现
     *
     * @param hitId 强制分片流水ID
     * @return 返回查询结果
     */
    @PostMapping("getHitByHitId")
    public Hit getHitByHitId(Long hitId)
    {
        return hitService.getHitByHitId(hitId);
    }

}
