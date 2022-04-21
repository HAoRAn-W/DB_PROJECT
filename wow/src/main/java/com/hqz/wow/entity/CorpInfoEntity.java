package com.hqz.wow.entity;

import com.baomidou.mybatisplus.annotation.FieldStrategy;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("hqz_corp_info")
public class CorpInfoEntity {

    @TableId(value = "corp_reg_no")
    private String corpRegNo;

    @TableField(value = "corp_name", insertStrategy = FieldStrategy.NOT_NULL)
    private String corpName;

    @TableField(value = "discount", insertStrategy = FieldStrategy.NOT_NULL)
    private double discount;

}
