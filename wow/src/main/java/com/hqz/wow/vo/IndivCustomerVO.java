package com.hqz.wow.vo;

import lombok.Data;

@Data
public class IndivCustomerVO {
    private CustomerVO customer;
    private String firstName;
    private String LastName;
    private String driverLicenseNo;
    private String insuranceName;
    private String insuranceNo;
}
