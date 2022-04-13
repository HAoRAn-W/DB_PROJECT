package com.hqz.wow.vo;

import lombok.Data;

import java.io.Serializable;

@Data
public class ClassVO implements Serializable {

    private int classId;

    private String className;

    private float rentalRate;

    private float overFee;

    private String imgUrl;
}
