package com.hqz.wow.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("hqz_office")
public class OfficeEntity {
    @TableId(value = "office_id")
    private int officeID;

    private String street;

    private String city;

    private String state;

    private String zipcode;

    @TableField(value = "office_phone")
    private String officePhone;

    @TableField(value = "img_url")
    private String imgUrl; // TODO
}
