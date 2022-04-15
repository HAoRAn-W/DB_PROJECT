package com.hqz.wow.service;

import com.hqz.wow.entity.VehicleEntity;

import java.util.List;

public interface VehicleService {
    List<VehicleEntity> getVehicleListByClass(int classId);

    List<VehicleEntity> getVehicleListByClassAndOffice(int classId, int officeId);

    VehicleEntity getVehicleByVin(String vin);

    void rentVehicle(String vin);
}
