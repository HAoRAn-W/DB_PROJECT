package com.hqz.wow.service;

import com.hqz.wow.entity.CustomerEntity;
import com.hqz.wow.entity.OfficeEntity;
import com.hqz.wow.entity.RentalServiceEntity;
import com.hqz.wow.entity.VehicleEntity;
import com.hqz.wow.vo.CheckoutVO;

import java.util.List;

public interface RentalService {
    void addRentalService(VehicleEntity vehicleEntity, OfficeEntity officeEntity, CustomerEntity customerEntity, CheckoutVO checkoutVO);

    List<RentalServiceEntity> getRentalServiceListByCustomerId(int customerId);

}
