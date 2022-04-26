package com.hqz.wow.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.hqz.wow.entity.VehicleEntity;
import com.hqz.wow.mapper.VehicleMapper;
import com.hqz.wow.util.WowConstants;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class VehicleServiceImpl implements VehicleService {

    @Resource
    VehicleMapper vehicleMapper;

    @Override
    public IPage<VehicleEntity> getVehicleListByClass(int classId, int curPage) {
        QueryWrapper<VehicleEntity> wrapper = new QueryWrapper<>();
        wrapper.eq("class_id" , classId);
        Page<VehicleEntity> vehicleEntityPage = new Page<>(curPage, WowConstants.PAGE_SIZE);
        return vehicleMapper.selectPage(vehicleEntityPage, wrapper);
    }

    @Override
    public IPage<VehicleEntity> getVehicleListByClassAndOffice(int classId, int officeId, int curPage) {
        QueryWrapper<VehicleEntity> wrapper = new QueryWrapper<>();
        wrapper.eq("class_id" , classId).eq("office_id", officeId);
        Page<VehicleEntity> vehicleEntityPage = new Page<>(curPage, WowConstants.PAGE_SIZE);
        return vehicleMapper.selectPage(vehicleEntityPage, wrapper);
    }

    @Override
    public VehicleEntity getVehicleByVin(String vin) {
        return vehicleMapper.selectById(vin);
    }

    @Override
    public void rentVehicle(String vin) {
        VehicleEntity vehicle= vehicleMapper.selectById(vin);
        vehicle.setVehicleStatus(WowConstants.VEHICLE_RENT);
        vehicleMapper.updateById(vehicle);
    }
}
