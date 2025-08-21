package com.mysql.sharding.demo.complex;


import com.google.common.base.Preconditions;
import org.apache.shardingsphere.shadow.spi.ShadowOperationType;
import org.apache.shardingsphere.shadow.spi.column.ColumnShadowAlgorithm;
import org.apache.shardingsphere.shadow.spi.column.PreciseColumnShadowValue;

import java.util.Collection;
import java.util.Objects;
import java.util.Optional;
import java.util.Properties;
import java.util.regex.Pattern;

/**
 * @author fw
 * @version 1.0
 * @title MyColumnShadow
 * @Description
 * @create 2025/8/21 20:22
 */
public class MyColumnShadow implements ColumnShadowAlgorithm<String> {

    private static final String COLUMN = "column";

    private static final String OPERATION = "operation";

    private static final String VALUE = "myMatch";

    private Properties props = new Properties();

    private Pattern pattern;

    private ShadowOperationType shadowOperationType;
    /**
     * 功能描述： 影子库的实现
     *
     * @param shadowValue
     * @return
     */
    @Override
    public boolean isShadow(PreciseColumnShadowValue<String> shadowValue) {
        System.out.println( shadowValue );
        Object value = shadowValue.getValue();
        if (value == null) {
            return false;
        }
        boolean matches = pattern.matcher(value.toString()).matches();
        if(Integer.valueOf( value.toString()) > 300 && Integer.valueOf( value.toString()) < 500){
            matches = Boolean.TRUE;
        }
        return matches;
    }

    @Override
    public String getShadowColumn() {
        String column = props.getProperty(COLUMN);
        return column;
    }

    @Override
    public ShadowOperationType getShadowOperationType() {
        String operationType = props.getProperty(OPERATION);
        return ShadowOperationType.valueOf(operationType.toUpperCase());
    }

    @Override
    public void init(Properties props) {
        this.props = props;
        checkProps();
        String value = (String) props.get(VALUE);
        this.pattern = Pattern.compile(value);
    }

    @Override
    public String getType() {
        return "MY_COLUMN_VALUE_MATCH";
    }
    /**
     * 验证yml中是否正确输入相应的配置了
     */
    private void checkProps()
    {
        checkOperation();
        checkColumn();
        checkValue();
    }

    /**
     * 验证myMatch的值是否已经配置
     */
    private void checkValue()
    {
        Object value = props.get(VALUE);
        Preconditions.checkNotNull(value, "Column value match shadow algorithm value cannot be null.");
    }

    /**
     * 验证column的值是否已经配置
     */
    private void checkColumn()
    {
        String column = props.getProperty(COLUMN);
        Preconditions.checkNotNull(column, "Column value match shadow algorithm column cannot be null.");
    }

    /**
     * 验证当前的操作类型比如 select、insert、update、delete是否已经配置
     */
    private void checkOperation()
    {
        String operationType = props.getProperty(OPERATION);
        Preconditions.checkNotNull(operationType, "Column value match shadow algorithm operation cannot be null.");
        Optional<ShadowOperationType> shadowOperationType = ShadowOperationType.contains(operationType);
        Preconditions.checkState(shadowOperationType.isPresent(), "Column value match shadow algorithm operation must be one of select insert update delete.");
        shadowOperationType.ifPresent(type -> this.shadowOperationType = type);
    }
}
