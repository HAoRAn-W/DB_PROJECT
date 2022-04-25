package com.hqz.wow.service;

import com.hqz.wow.entity.CouponEntity;

public interface CouponService {
    CouponEntity getCouponById(int couponId);

    boolean checkCouponDate(int couponId);
}
