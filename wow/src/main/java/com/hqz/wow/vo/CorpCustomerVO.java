package com.hqz.wow.vo;

import lombok.Data;

@Data
public class CorpCustomerVO {
    private CustomerVO customer;
    private int employeeId;
    private String corpRegisterNo;
}
