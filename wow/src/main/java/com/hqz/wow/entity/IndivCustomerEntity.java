package com.hqz.wow.entity;

import com.baomidou.mybatisplus.annotation.FieldStrategy;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("hqz_indiv_cust")
public class IndivCustomerEntity {
    @TableId(value = "customer_id")
    private int customerId;

    @TableField(value = "fname", insertStrategy = FieldStrategy.NOT_NULL)
    private String firstName;

    @TableField(value = "lname", insertStrategy = FieldStrategy.NOT_NULL)
    private String LastName;

    @TableField(value = "driver_lic_no", insertStrategy = FieldStrategy.NOT_NULL)
    private String driverLicenseNo;

    @TableField(value = "ins_company_name", insertStrategy = FieldStrategy.NOT_NULL)
    private String insuranceName;

    @TableField(value = "ins_policy_no", insertStrategy = FieldStrategy.NOT_NULL)
    private String insuranceNo;


}
