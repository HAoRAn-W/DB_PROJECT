package com.hqz.wow.exception;

import lombok.Getter;

@Getter
public class RegistrationException extends RuntimeException{
    private int code;

    public RegistrationException(int code, String msg) {
        super(msg);
        this.code = code;
    }
}
