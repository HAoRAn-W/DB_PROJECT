package com.hqz.wow.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.hqz.wow.entity.VehicleEntity;

import java.util.List;

public interface VehicleService {
    IPage<VehicleEntity> getVehicleListByClass(int classId, int curPage);

    IPage<VehicleEntity> getVehicleListByClassAndOffice(int classId, int officeId, int curPage);

    VehicleEntity getVehicleByVin(String vin);

    void rentVehicle(String vin);
}
