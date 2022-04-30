package com.hqz.wow.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.hqz.wow.entity.InvoiceEntity;
import com.hqz.wow.entity.PaymentEntity;
import com.hqz.wow.entity.RentalServiceEntity;
import com.hqz.wow.entity.VehicleEntity;
import com.hqz.wow.exception.PayBillException;
import com.hqz.wow.mapper.InvoiceMapper;
import com.hqz.wow.mapper.PaymentMapper;
import com.hqz.wow.mapper.RentalServiceMapper;
import com.hqz.wow.mapper.VehicleMapper;
import com.hqz.wow.util.WowConstants;
import com.hqz.wow.vo.PaymentVO;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service
public class PaymentServiceImpl implements PaymentService {

    @Resource
    PaymentMapper paymentMapper;

    @Resource
    InvoiceMapper invoiceMapper;

    @Resource
    RentalServiceMapper rentalServiceMapper;

    @Resource
    VehicleMapper vehicleMapper;

    @Override
    public PaymentEntity getPaymentRecordById(int paymentId) {
        return paymentMapper.selectById(paymentId);
    }

    @Override
    @Transactional
    public void payBill(PaymentVO paymentVO) throws RuntimeException{
        PaymentEntity paymentRecord = new PaymentEntity();
        BeanUtils.copyProperties(paymentVO, paymentRecord);
        paymentRecord.setPayDate(new Date());

        int serviceId = paymentRecord.getServiceId();

        InvoiceEntity invoiceEntity = invoiceMapper.selectById(serviceId);
        float newUnpaidAmount = invoiceEntity.getUnpaidAmount() - paymentRecord.getPaidAmount();
        invoiceEntity.setUnpaidAmount(newUnpaidAmount);

        try {
            paymentMapper.insert(paymentRecord);
            invoiceMapper.updateById(invoiceEntity);
            if(Float.compare(newUnpaidAmount, 0.00f) == 0) {
                RentalServiceEntity rentalService = rentalServiceMapper.selectById(serviceId);
                rentalService.setServiceStatus(WowConstants.SERVICE_FINISHED);
                rentalServiceMapper.updateById(rentalService);
                VehicleEntity vehicleEntity = vehicleMapper.selectById(rentalService.getVin());
                vehicleEntity.setVehicleStatus(WowConstants.VEHICLE_AVAILABLE);
                vehicleMapper.updateById(vehicleEntity);
            }
        }
        catch (Exception e) {
            throw new PayBillException(WowConstants.PAY_BILL_ERROR, "Pay Bill Error");
        }
    }

    @Override
    public float amountNeedToPay(int serviceId) {
       InvoiceEntity invoiceEntity = invoiceMapper.selectById(serviceId);
        return invoiceEntity.getUnpaidAmount();
    }
}
