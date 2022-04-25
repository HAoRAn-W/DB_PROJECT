package com.hqz.wow.service;

import com.hqz.wow.entity.CouponEntity;
import com.hqz.wow.mapper.CouponMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;

@Service
public class CouponServiceImpl implements CouponService {

    @Resource
    CouponMapper couponMapper;

    @Override
    public CouponEntity getCouponById(int couponId) {
        return couponMapper.selectById(couponId);
    }

    @Override
    public boolean checkCouponDate(int couponId) {
        CouponEntity coupon = getCouponById(couponId);
        Date currentDate = new Date();
        return coupon.getValidFromDate().before(currentDate) && coupon.getValidToDate().after(currentDate);
    }
}
