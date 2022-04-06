package com.hqz.wow.service;

import com.hqz.wow.entity.CustomerEntity;
import com.hqz.wow.vo.CustomerVO;

public interface CustomerService {

    public CustomerEntity findCustomerByEmail(String email);

    public boolean checkIfCustomerExist(String email);

    public void encodePassword(CustomerEntity userEntity, CustomerVO customerVO);
}
