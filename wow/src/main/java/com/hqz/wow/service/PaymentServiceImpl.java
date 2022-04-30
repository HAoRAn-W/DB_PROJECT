package com.hqz.wow.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.hqz.wow.entity.InvoiceEntity;
import com.hqz.wow.entity.PaymentEntity;
import com.hqz.wow.entity.RentalServiceEntity;
import com.hqz.wow.exception.PayBillException;
import com.hqz.wow.mapper.InvoiceMapper;
import com.hqz.wow.mapper.PaymentMapper;
import com.hqz.wow.mapper.RentalServiceMapper;
import com.hqz.wow.util.WowConstants;
import com.hqz.wow.vo.PaymentVO;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
public class PaymentServiceImpl implements PaymentService {

    @Resource
    PaymentMapper paymentMapper;

    @Resource
    InvoiceMapper invoiceMapper;

    @Override
    public PaymentEntity getPaymentRecordById(int paymentId) {
        return paymentMapper.selectById(paymentId);
    }

    @Override
    @Transactional
    public void payBill(PaymentVO paymentVO) throws RuntimeException{
        PaymentEntity paymentRecord = new PaymentEntity();
        BeanUtils.copyProperties(paymentVO, paymentRecord);
        try {
            paymentMapper.insert(paymentRecord);
        }
        catch (Exception e) {
            throw new PayBillException(WowConstants.PAY_BILL_ERROR, "Pay Bill Error");
        }
    }

    @Override
    public float amountNeedToPay(int serviceId) {
       InvoiceEntity invoiceEntity = invoiceMapper.selectById(serviceId);
       float amount = invoiceEntity.getAmount();
       QueryWrapper<PaymentEntity> wrapper = new QueryWrapper<>();
       wrapper.eq("service_id", serviceId);
       List<PaymentEntity> paymentRecords = paymentMapper.selectList(wrapper);
       for(PaymentEntity record : paymentRecords) {
           amount -= record.getPaidAmount();
       }
       return amount;
    }
}
