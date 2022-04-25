package com.hqz.wow.service;

import com.hqz.wow.entity.InvoiceEntity;
import com.hqz.wow.mapper.InvoiceMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class InvoiceServiceImpl implements InvoiceService {

    @Resource
    InvoiceMapper invoiceMapper;

    @Override
    public InvoiceEntity getInvoiceById(int invoiceId) {
        return invoiceMapper.selectById(invoiceId);
    }
}
