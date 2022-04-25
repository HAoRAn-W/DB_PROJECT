package com.hqz.wow.exception;

import lombok.Getter;

@Getter
public class PayBillException extends RuntimeException{
    private int code;

    public PayBillException(int code, String msg) {
        super(msg);
        this.code = code;
    }
}
