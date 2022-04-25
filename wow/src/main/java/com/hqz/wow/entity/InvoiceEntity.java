package com.hqz.wow.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

@Data
@TableName("hqz_invoice")
public class InvoiceEntity {

    @TableId(value = "service_id")
    private int invoiceId;

    @TableField(value = "i_amount")
    private float amount;

    @TableField(value = "i_date")
    private Date invoiceDate;

}
