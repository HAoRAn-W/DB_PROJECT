package com.hqz.wow.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import static com.baomidou.mybatisplus.annotation.FieldStrategy.NOT_NULL;

@Data
@TableName("hqz_customer")
public class CustomerEntity {
    @TableId(value = "customer_id", type = IdType.AUTO)
    private int customerId; // auto increment

    @TableField(value = "c_street", insertStrategy = NOT_NULL)
    private String street;

    @TableField(value = "c_city", insertStrategy = NOT_NULL)
    private String city;

    @TableField(value = "c_state", insertStrategy = NOT_NULL)
    private String state;

    @TableField(value = "c_zipcode", insertStrategy = NOT_NULL)
    private String zipcode;

    @TableField(value = "c_email", insertStrategy = NOT_NULL)
    private String email;

    @TableField(value = "c_phone", insertStrategy = NOT_NULL)
    private String phone;

    @TableField(value = "cust_type", insertStrategy = NOT_NULL)
    private String customerType; // I for individual and C for corporation

    @TableField(value = "c_password", insertStrategy = NOT_NULL)
    private String password; // encoded password

    @TableField(value = "q_id", insertStrategy = NOT_NULL)
    private int questionId;

    @TableField(value = "sec_ans", insertStrategy = NOT_NULL)
    private String secAnswer;
}
