package com.hqz.wow.service;

import com.hqz.wow.entity.CustomerEntity;
import com.hqz.wow.vo.CorpCustomerVO;

public interface CustomerService {

    public CustomerEntity findCustomerByEmail(String email);

    public boolean checkIfCustomerExist(String email);

    public void registerCorpCustomer(CorpCustomerVO corpCustomerVO);
}
