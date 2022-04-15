package com.hqz.wow.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.hqz.wow.entity.VehicleEntity;
import com.hqz.wow.mapper.VehicleMapper;
import com.hqz.wow.util.WowConstants;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class VehicleServiceImpl implements VehicleService {

    @Resource
    VehicleMapper vehicleMapper;

    @Override
    public List<VehicleEntity> getVehicleListByClass(int classId) {
        QueryWrapper wrapper = new QueryWrapper();
        wrapper.eq("class_id" , classId);
        List<VehicleEntity> vehicleEntityList = vehicleMapper.selectList(wrapper);
        return vehicleEntityList;
    }

    @Override
    public List<VehicleEntity> getVehicleListByClassAndOffice(int classId, int officeId) {
        List<VehicleEntity> vehicleEntityList = getVehicleListByClass(classId);
        return vehicleEntityList.stream()
                .filter(a -> a.getOfficeId() == officeId)
                .collect(Collectors.toList());
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
