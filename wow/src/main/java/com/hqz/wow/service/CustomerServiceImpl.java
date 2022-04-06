package com.hqz.wow.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.hqz.wow.entity.CustomerEntity;
import com.hqz.wow.mapper.CustomerMapper;
import com.hqz.wow.vo.CustomerVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService{

    @Autowired
    CustomerMapper customerMapper;

    @Autowired
    PasswordEncoder passwordEncoder;


    @Override
    public CustomerEntity findCustomerByEmail(String email) throws UsernameNotFoundException {
        QueryWrapper wrapper = new QueryWrapper();
        wrapper.eq("c_email", email);
        return customerMapper.selectOne(wrapper);
    }

    @Override
    public boolean checkIfCustomerExist(String email) {
        return findCustomerByEmail(email) != null;
    }

    @Override
    public void encodePassword(CustomerEntity customerEntity, CustomerVO customerVO) {
        customerEntity.setPassword(passwordEncoder.encode(customerVO.getPassword()));
    }
}
