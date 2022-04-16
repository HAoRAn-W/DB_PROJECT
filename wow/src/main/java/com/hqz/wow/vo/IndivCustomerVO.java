package com.hqz.wow.vo;

import lombok.Data;

import javax.validation.constraints.NotEmpty;

@Data
public class IndivCustomerVO {
    private CustomerVO customer;

    @NotEmpty(message = "Please tell us your first name")
    private String firstName;

    @NotEmpty(message = "Please tell us your last name")
    private String LastName;

    @NotEmpty(message = "Please provide us your driver license number")
    private String driverLicenseNo;

    @NotEmpty(message = "Please tell us your insurance company")
    private String insuranceName;

    @NotEmpty(message = "Please tell us your insurance number")
    private String insuranceNo;
}
