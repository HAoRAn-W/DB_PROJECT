package com.hqz.wow.vo;

import lombok.Data;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Data
public class PaymentVO {
    @NotEmpty(message = "Please choose your payment method")
    private String paymentMethod;

    @NotEmpty(message = "Please input your card number")
    private String cardNo;

    private int serviceId;

    @NotNull(message = "Please specify your payment amount")
    @Digits(integer=6, fraction=2, message = "Amount out of range")
    private float paidAmount;

}
