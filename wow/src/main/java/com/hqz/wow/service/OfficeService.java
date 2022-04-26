package com.hqz.wow.service;

import com.hqz.wow.entity.OfficeEntity;

import java.util.List;

public interface OfficeService {
    List<OfficeEntity> getAllOffices();

    OfficeEntity getOfficeById(int id);
}
