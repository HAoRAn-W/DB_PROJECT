package com.hqz.wow.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

@Data
@TableName("hqz_coupon")
public class CouponEntity {
    @TableId(value = "coupon_id")
    private int couponId;

    private float discount;

    @TableField(value = "valid_from_date")
    private Date validFromDate;

    @TableField(value = "valid_to_date")
    private Date validToDate;
}
