package com.mysql.sharding.demo.controller;


import com.mysql.sharding.demo.entity.Dict;
import com.mysql.sharding.demo.service.DictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DictController
{

    @Autowired
    private DictService dictService;

    /**
     * 功能描述： 更新数据字典的数据
     * @param dict
     */
    @PostMapping("updateDict")
    public  void updateDict(@RequestBody Dict dict)
    {
        dictService.updateDict(dict);
    }

    /**
     * 功能描述： 删除字典数据
     * @param dictId
     */
    @PostMapping("deleteDict")
    public  void  deleteDict(Long dictId)
    {
        dictService.deleteDict(dictId);
    }

    /**
     * 功能描述： 报错字典数据
     * @param dict
     */
    @PostMapping("saveDict")
    public void saveDict(@RequestBody Dict dict)
    {
        dictService.saveDict(dict);
    }

}
