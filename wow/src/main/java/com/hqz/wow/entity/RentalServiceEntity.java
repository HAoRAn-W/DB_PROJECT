package com.hqz.wow.entity;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;

import java.math.BigInteger;
import java.sql.Timestamp;
import java.util.Date;

@Data
@TableName("hqz_rental_service")
public class RentalServiceEntity {

    @TableId(value = "service_id", type = IdType.AUTO)
    private int serviceId;

    @TableField(value = "coupon_id")
    private BigInteger couponId;

    @TableField(value = "customer_id", insertStrategy = FieldStrategy.NOT_NULL)
    private int customer_id;

    @TableField(value = "p_date", insertStrategy = FieldStrategy.NOT_NULL)
    private Date pDate;

    @TableField(value = "p_office", insertStrategy = FieldStrategy.NOT_NULL)
    private int pOffice;

    @TableField(value = "d_date",insertStrategy = FieldStrategy.NOT_NULL)
    private Date dDate;

    @TableField(value = "d_office",insertStrategy = FieldStrategy.NOT_NULL)
    private int dOffice;

    @TableField(value = "daily_o_limit",insertStrategy = FieldStrategy.NOT_NULL)
    private float dailyOLimit;

    @TableField(value = "s_odometer",insertStrategy = FieldStrategy.NOT_NULL)
    private float sOdometer;

    @TableField(value = "e_odometer",insertStrategy = FieldStrategy.NOT_NULL)
    private float eOdometer;

    @TableField(value = "service_status",insertStrategy = FieldStrategy.NOT_NULL)
    private String serviceStatus;

    @TableField(value = "vin",insertStrategy = FieldStrategy.NOT_NULL)
    private String vin;


}
