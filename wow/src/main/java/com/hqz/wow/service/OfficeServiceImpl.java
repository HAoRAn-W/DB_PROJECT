package com.hqz.wow.service;

import com.hqz.wow.entity.OfficeEntity;
import com.hqz.wow.mapper.OfficeMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OfficeServiceImpl implements OfficeService {

    @Resource
    OfficeMapper officeMapper;

    @Override
    public List<OfficeEntity> getAllOffices() {
        return officeMapper.selectList(null);
    }

    @Override
    public OfficeEntity getOfficeById(int id){
        return officeMapper.selectById(id);
    }
}
