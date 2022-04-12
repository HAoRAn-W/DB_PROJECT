package com.hqz.wow.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.hqz.wow.entity.CorpCustomerEntity;
import com.hqz.wow.entity.CustomerEntity;
import com.hqz.wow.mapper.CorpCustomerMapper;
import com.hqz.wow.mapper.CustomerMapper;
import com.hqz.wow.mapper.IndivCustomerMapper;
import com.hqz.wow.vo.CorpCustomerVO;
import com.hqz.wow.vo.CustomerVO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService{

    @Autowired
    CustomerMapper customerMapper;

    @Autowired
    CorpCustomerMapper corpCustomerMapper;

    @Autowired
    IndivCustomerMapper indivCustomerMapper;

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
    public void registerCorpCustomer(CorpCustomerVO corpCustomerVO) {
        // register basic info
        CustomerEntity customerEntity = new CustomerEntity();
        BeanUtils.copyProperties(corpCustomerVO.getCustomer(), customerEntity);
        customerEntity.setCustomerType("C");
        customerMapper.insert(customerEntity);

        // register corp customer info
        int customerId = findCustomerByEmail(customerEntity.getEmail()).getCustomerId();
        CorpCustomerEntity corpCustomerEntity = new CorpCustomerEntity();
        corpCustomerEntity.setCustomerId(customerId);
        corpCustomerEntity.setEmployeeId(corpCustomerVO.getEmployeeId());
        corpCustomerEntity.setCorpRegisterNo((corpCustomerVO.getCorpRegisterNo()));
        corpCustomerMapper.insert(corpCustomerEntity);
    }
}
