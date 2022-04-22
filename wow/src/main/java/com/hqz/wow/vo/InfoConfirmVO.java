package com.hqz.wow.vo;

import lombok.Data;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Data
public class InfoConfirmVO {
    @Email(message = "Please input valid e-mail address")
    private String email;

    @NotNull(message = "Please choose your security question")
    private int questionId;

    @NotEmpty(message = "Please provide your answer for the security question")
    private String secAnswer;
}
