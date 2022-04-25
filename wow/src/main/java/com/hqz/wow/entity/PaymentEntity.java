package com.hqz.wow.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

@Data
@TableName("hqz_payment")
public class PaymentEntity {
    @TableId(value = "payment_id")
    private int paymentId;

    @TableField(value = "pay_date")
    private Date payDate;

    @TableField(value = "payment_method")
    private String paymentMethod;

    @TableField(value = "card_no")
    private String cardNo;

    @TableField(value = "service_id")
    private int serviceId;

    @TableField(value = "paid_amount")
    private float paidAmount;
}
