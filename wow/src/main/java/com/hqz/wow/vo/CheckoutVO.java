package com.hqz.wow.vo;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.math.BigInteger;
import java.util.Date;

@Data
public class CheckoutVO {

    @NotNull(message = "dOffice cannot be null")
    private int dOffice;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date pDate;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date dDate;

    private BigInteger couponId;

}
