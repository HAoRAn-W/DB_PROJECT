package com.hqz.wow.vo;

import lombok.Data;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

@Data
public class IndivCustomerVO {
    @Email(message = "Please input valid email address")
    private String email;

    @NotEmpty(message = "Password cannot be empty")
    private String password;

    @NotEmpty(message = "Please input your street")
    private String street;

    @NotEmpty(message = "Please input your city")
    private String city;

    @NotEmpty(message = "Please choose your state")
    private String state;

    @NotEmpty(message = "Please input your postal code")
    private String zipcode;

    @NotEmpty(message = "Please input your phone number")
    @Pattern(regexp="(^$|[0-9]{10})")
    private String phone;

    private String customerType;

    @NotEmpty(message = "Please tell us your first name")
    private String firstName;

    @NotEmpty(message = "Please tell us your last name")
    private String lastName;

    @NotEmpty(message = "Please provide us your driver license number")
    private String driverLicenseNo;

    @NotEmpty(message = "Please tell us your insurance company")
    private String insuranceName;

    @NotEmpty(message = "Please tell us your insurance number")
    private String insuranceNo;

    @NotNull(message = "Please choose one security question")
    private int questionId;

    @NotEmpty(message = "Please provide your answer for the security question")
    private String secAnswer;
}
