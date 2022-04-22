package com.hqz.wow.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.hqz.wow.entity.CorpCustomerEntity;
import com.hqz.wow.entity.CustomerEntity;
import com.hqz.wow.entity.IndivCustomerEntity;
import com.hqz.wow.mapper.CorpCustomerMapper;
import com.hqz.wow.mapper.CustomerMapper;
import com.hqz.wow.mapper.IndivCustomerMapper;
import com.hqz.wow.util.WowConstants;
import com.hqz.wow.vo.CorpCustomerVO;
import com.hqz.wow.vo.IndivCustomerVO;
import com.hqz.wow.vo.ResetPasswordVO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
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

    //todo get customer detail info

    @Override
    public boolean checkIfCustomerExist(String email) {
        return findCustomerByEmail(email) != null;
    }

    @Override
    public void registerCorpCustomer(CorpCustomerVO corpCustomerVO) {
        // register basic info
        CustomerEntity customerEntity = new CustomerEntity();
        BeanUtils.copyProperties(corpCustomerVO, customerEntity);
        customerEntity.setCustomerType(WowConstants.CORP_TYPE);
        customerMapper.insert(customerEntity);

        // register corp customer info
        int customerId = findCustomerByEmail(customerEntity.getEmail()).getCustomerId();
        CorpCustomerEntity corpCustomerEntity = new CorpCustomerEntity();
        corpCustomerEntity.setCustomerId(customerId);
        corpCustomerEntity.setEmployeeId(corpCustomerVO.getEmployeeId());
        corpCustomerEntity.setCorpRegisterNo((corpCustomerVO.getCorpRegisterNo()));
        corpCustomerMapper.insert(corpCustomerEntity);
    }

    @Override
    public void registerIndivCustomer(IndivCustomerVO indivCustomerVO) {
        // register basic info
        CustomerEntity customerEntity = new CustomerEntity();
        BeanUtils.copyProperties(indivCustomerVO, customerEntity);
        customerEntity.setCustomerType(WowConstants.INDIV_TYPE);
        customerMapper.insert(customerEntity);

        // register individual customer info
        int customerId = findCustomerByEmail(customerEntity.getEmail()).getCustomerId();
        IndivCustomerEntity indivCustomerEntity = new IndivCustomerEntity();
        indivCustomerEntity.setCustomerId(customerId);
        indivCustomerEntity.setFirstName(indivCustomerVO.getFirstName());
        indivCustomerEntity.setLastName(indivCustomerVO.getLastName());
        indivCustomerEntity.setDriverLicenseNo(indivCustomerVO.getDriverLicenseNo());
        indivCustomerEntity.setInsuranceName(indivCustomerVO.getInsuranceName());
        indivCustomerEntity.setInsuranceNo(indivCustomerVO.getInsuranceNo());
        indivCustomerMapper.insert(indivCustomerEntity);
    }

    @Override
    public void resetPassword(String email, ResetPasswordVO resetPasswordVO) {
        CustomerEntity customerEntity= findCustomerByEmail(email);
        customerEntity.setPassword(resetPasswordVO.getPassword());
        customerMapper.updateById(customerEntity);
    }

    @Override
    public boolean validateSecQuestion(String email, int questionId, String answer) {
        CustomerEntity customer = findCustomerByEmail(email);
        return customer.getQuestionId() == questionId && answer.equals(customer.getSecAnswer());
    }
}
