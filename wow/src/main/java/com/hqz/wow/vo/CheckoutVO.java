package com.hqz.wow.vo;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.math.BigInteger;
import java.util.Date;

@Data
public class CheckoutVO {

    @NotNull(message = "You must select a drop-off office.")
    private int dOffice;

    @NotNull(message = "You must select a pick-up date.")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date pDate;

    @NotNull(message = "You must select a drop-off date.")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date dDate;

    private BigInteger couponId;

}
