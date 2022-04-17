package com.hqz.wow.vo;

import lombok.Data;

import javax.validation.constraints.Email;

@Data
public class ConfirmEmailVO {
    @Email(message = "Please input valid e-mail address")
    private String email;
}
