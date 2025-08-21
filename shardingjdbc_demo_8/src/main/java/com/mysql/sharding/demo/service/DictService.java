package com.mysql.sharding.demo.service;


import com.mysql.sharding.demo.dao.DictDao;
import com.mysql.sharding.demo.entity.Dict;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(rollbackFor =
        {Exception.class})
public class DictService
{

    @Resource
    private DictDao dictDao;

    /**
     * 功能描述： 更新数据字典的数据
     *
     * @param dict
     */
    public void updateDict(Dict dict)
    {
        dictDao.updateDict(dict);
    }

    /**
     * 功能描述： 删除字典数据
     *
     * @param dictId
     */
    public void deleteDict(Long dictId)
    {
        dictDao.deleteByPrimaryKey(dictId);
    }

    /**
     * 功能描述： 报错字典数据
     *
     * @param dict
     */
    public void saveDict(Dict dict)
    {
        dictDao.insertSelective(dict);
    }

}
