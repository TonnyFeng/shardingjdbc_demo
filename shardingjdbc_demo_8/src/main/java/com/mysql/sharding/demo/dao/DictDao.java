package com.mysql.sharding.demo.dao;


import com.mysql.sharding.demo.entity.Dict;
import tk.mybatis.mapper.common.Mapper;

public interface DictDao extends Mapper<Dict> {
    /**
     * 功能描述： 更新数据字典的数据
     *
     * @param dict
     * @return
     */
    int updateDict(Dict dict);
}
