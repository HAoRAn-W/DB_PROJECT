package com.hqz.wow.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.hqz.wow.entity.CustomerEntity;
import com.hqz.wow.entity.OfficeEntity;
import com.hqz.wow.entity.RentalServiceEntity;
import com.hqz.wow.entity.VehicleEntity;
import com.hqz.wow.exception.RegistrationException;
import com.hqz.wow.mapper.RentalServiceMapper;
import com.hqz.wow.util.WowConstants;
import com.hqz.wow.vo.CheckoutVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Objects;

@Service
public class RentalServiceImpl implements RentalService {

    @Autowired
    RentalServiceMapper rentalServiceMapper;



    @Override
    @Transactional
    public void addRentalService(VehicleEntity vehicleEntity, OfficeEntity officeEntity,
                                 CustomerEntity customerEntity, CheckoutVO checkoutVO)  {
        try {
            RentalServiceEntity rentalServiceEntity = new RentalServiceEntity();
            rentalServiceEntity.setCouponId(checkoutVO.getCouponId());
            rentalServiceEntity.setCustomerId(customerEntity.getCustomerId());

            rentalServiceEntity.setDDate(checkoutVO.getDDate());
            rentalServiceEntity.setDOffice(checkoutVO.getDOffice());
            if (Objects.equals(customerEntity.getCustomerType(), WowConstants.INDIV_TYPE)) {
                rentalServiceEntity.setDailyOLimit(WowConstants.INDIV_DAILY_O_LIMIT);
            }
            rentalServiceEntity.setPDate(checkoutVO.getPDate());
            rentalServiceEntity.setPOffice(officeEntity.getOfficeID());
            rentalServiceEntity.setSOdometer(vehicleEntity.getOdometer());
            rentalServiceEntity.setEOdometer(vehicleEntity.getOdometer());
            rentalServiceEntity.setVin(vehicleEntity.getVin());
            rentalServiceEntity.setServiceStatus(WowConstants.SERVICE_ONGOING);

            rentalServiceMapper.insert(rentalServiceEntity);
        } catch (Exception e) {
            throw new RegistrationException(WowConstants.PLACE_ORDER_ERROR, "Error Place Order");
        }
    }

    @Override
    public List<RentalServiceEntity> getRentalServiceListByCustomerId(int customerId) {
        QueryWrapper<RentalServiceEntity> wrapper = new QueryWrapper<>();
        wrapper.eq("customer_id",customerId).orderByDesc("service_id");
        return rentalServiceMapper.selectList(wrapper);
    }


}
