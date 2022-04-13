package com.hqz.wow.service;

import com.hqz.wow.entity.CustomerEntity;
import com.hqz.wow.vo.CorpCustomerVO;
import com.hqz.wow.vo.IndivCustomerVO;

public interface CustomerService {

    CustomerEntity findCustomerByEmail(String email);

    boolean checkIfCustomerExist(String email);

    void registerCorpCustomer(CorpCustomerVO corpCustomerVO);

    void registerIndivCustomer(IndivCustomerVO indivCustomerVO);
}
