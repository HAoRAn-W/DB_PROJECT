package com.hqz.wow.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("hqz_vehicle")
public class VehicleEntity {
    @TableId
    private String vin;

    private String make;

    private String model;

    @TableField(value = "car_year")
    private int carYear;

    @TableField(value = "license_plate_no")
    private String licPlateNo;

    @TableField(value = "class_id")
    private int classId;

    @TableField(value = "office_id")
    private int officeId;

    @TableField(value = "vehicle_status")
    private String vehicleStatus;

    @TableField(value = "img_url")
    private String imgUrl;

    @TableField(value = "odometer")
    private float odometer;


}
