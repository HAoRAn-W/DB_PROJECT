package com.hqz.wow.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName("hqz_class")
public class ClassEntity implements Serializable {
    @TableId(value = "class_id")
    private int classId;

    @TableField(value = "class_name")
    private String className;

    @TableField(value = "rental_rate")
    private float rentalRate;

    @TableField(value = "over_fee")
    private float overFee;

    @TableField(value = "img_url")
    private String imgUrl;
}
