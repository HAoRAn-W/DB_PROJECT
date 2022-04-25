package com.hqz.wow.service;

import com.hqz.wow.entity.CustomerEntity;
import com.hqz.wow.vo.CorpCustomerVO;
import com.hqz.wow.vo.IndivCustomerVO;
import com.hqz.wow.vo.ResetPasswordVO;

public interface CustomerService {

    CustomerEntity findCustomerByEmail(String email);

    boolean checkIfCustomerExist(String email);

    void registerCorpCustomer(CorpCustomerVO corpCustomerVO) throws RuntimeException;

    void registerIndivCustomer(IndivCustomerVO indivCustomerVO) throws RuntimeException;

    void resetPassword(String email, ResetPasswordVO resetPasswordVO) throws RuntimeException;

    boolean validateSecQuestion(String email, int questionId, String answer);
}
