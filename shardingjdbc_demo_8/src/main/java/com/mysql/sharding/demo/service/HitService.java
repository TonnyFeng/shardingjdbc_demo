package com.mysql.sharding.demo.service;


import com.mysql.sharding.demo.dao.HitDao;
import com.mysql.sharding.demo.entity.Hit;
import jakarta.annotation.Resource;
import org.apache.shardingsphere.infra.hint.HintManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(rollbackFor =
        {Exception.class})
public class HitService
{

    @Resource
    private HitDao hitDao;

    /**
     * 功能描述： 实现新增强制分片数据
     *
     * @param hit 强制分片实体
     */
    public void saveHit(Hit hit)
    {
        HintManager hintManager = HintManager.getInstance();
        hintManager.addDatabaseShardingValue("t_hit", hit.getHitId());
        hintManager.addTableShardingValue("t_hit", hit.getHitId());
        hitDao.insertSelective(hit);
    }

    /**
     * 功能描述： 强制分片的实现
     *
     * @param hitId 强制分片流水ID
     * @return 返回查询结果
     */
    public Hit getHitByHitId(Long hitId)
    {
        HintManager hintManager = HintManager.getInstance();
        hintManager.addDatabaseShardingValue("t_hit", hitId);
        hintManager.addTableShardingValue("t_hit", hitId);
        return hitDao.selectByPrimaryKey(hitId);
    }

}
