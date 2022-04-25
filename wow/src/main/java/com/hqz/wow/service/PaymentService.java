package com.hqz.wow.service;

import com.hqz.wow.entity.PaymentEntity;
import com.hqz.wow.vo.PaymentVO;

public interface PaymentService {
    PaymentEntity getPaymentRecordById(int paymentId);

    void payBill(PaymentVO paymentVO) throws RuntimeException;
}
