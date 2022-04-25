package com.hqz.wow.exception;

import lombok.Getter;

@Getter
public class ResetPasswordException extends RuntimeException{
    private int code;

    public ResetPasswordException(int code, String msg) {
        super(msg);
        this.code = code;
    }
}
