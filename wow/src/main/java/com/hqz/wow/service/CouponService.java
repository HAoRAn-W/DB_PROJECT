package com.hqz.wow.service;

import com.hqz.wow.entity.CouponEntity;

import java.math.BigInteger;

public interface CouponService {
    CouponEntity getCouponById(int couponId);

    boolean checkCouponDate(int couponId);

    boolean checkCouponExists(BigInteger couponId);
}
