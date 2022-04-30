package com.hqz.wow.vo;

import lombok.Data;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

@Data
public class PaymentVO {
    @NotEmpty(message = "Please choose your payment method")
    private String paymentMethod;

    @NotEmpty(message = "Please input your card number")
    @Pattern(regexp="(^$|[0-9]{16})", message = "Please input valid card number")
    private String cardNumber;

    private int serviceId;

    @NotNull(message = "Please specify your payment amount")
    @Digits(integer=6, fraction=2, message = "Amount out of range")
    private float paidAmount;

}
