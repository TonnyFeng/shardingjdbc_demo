package com.mysql.sharding.demo.complex;


import org.apache.shardingsphere.sharding.api.sharding.hint.HintShardingAlgorithm;
import org.apache.shardingsphere.sharding.api.sharding.hint.HintShardingValue;

import java.util.Collection;
import java.util.LinkedList;
import java.util.Properties;

public class ModuloHintShardingTableAlgorithm implements HintShardingAlgorithm<Long>
{

    private Properties props;

    @Override
    public Collection<String> doSharding(final Collection<String> availableTargetNames, final HintShardingValue<Long> shardingValue)
    {
        Collection<String> result = new LinkedList<>();
        for (String each : availableTargetNames)
        {
            for (Long value : shardingValue.getValues())
            {
                if (each.endsWith(String.valueOf(value % 4)))
                {
                    result.add(each);
                }
            }
        }
        return result;
    }

    @Override
    public String getType()
    {
        return "HINT_TABLE";
    }

    @Override
    public void init(Properties props)
    {
        this.props = props;
    }
}
