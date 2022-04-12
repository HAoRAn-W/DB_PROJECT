package com.hqz.wow.vo;

import lombok.Data;

@Data
public class CustomerVO {
    private String email;
    private String password;

    private String street;
    private String city;
    private String state;
    private String zipcode;

    private String phone;

    private String customerType;
}
