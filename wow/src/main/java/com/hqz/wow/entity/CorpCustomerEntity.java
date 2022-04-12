package com.hqz.wow.entity;

import com.baomidou.mybatisplus.annotation.FieldStrategy;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("hqz_corp_cust")
public class CorpCustomerEntity {
    @TableId(value = "customer_id")
    private int customerId;

    @TableField(value = "employee_id", insertStrategy = FieldStrategy.NOT_NULL)
    private int employeeId;

    @TableField(value = "corp_reg_no", insertStrategy = FieldStrategy.NOT_NULL)
    private String corpRegisterNo;
}
