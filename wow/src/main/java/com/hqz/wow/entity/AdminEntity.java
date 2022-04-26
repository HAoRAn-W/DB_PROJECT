package com.hqz.wow.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import static com.baomidou.mybatisplus.annotation.FieldStrategy.NOT_NULL;

@Data
@TableName("hqz_admin")
public class AdminEntity {
    @TableId(value = "admin_id")
    private int admin_id;

    @TableField(value = "a_password", insertStrategy = NOT_NULL)
    private String a_password;
}