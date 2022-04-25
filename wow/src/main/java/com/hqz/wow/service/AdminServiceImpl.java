package com.hqz.wow.service;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.hqz.wow.entity.AdminEntity;
import com.hqz.wow.mapper.AdminMapper;
import com.hqz.wow.vo.AdminVO;
import com.hqz.wow.vo.ResetPasswordVO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    AdminMapper adminMapper;

    @Override
    public AdminEntity findAdminByAdminId(int admin_id) throws UsernameNotFoundException{
        QueryWrapper<AdminEntity> wrapper = new QueryWrapper<>();
        wrapper.eq("admin_id",admin_id);
        return adminMapper.selectOne(wrapper);
    }

    @Override
    public boolean checkIfAdminExist(int admin_id) {
        return findAdminByAdminId(admin_id) != null;
    }

    @Override
    public void registerAdmin(AdminVO adminVO) {

        AdminEntity adminEntity = new AdminEntity();
        BeanUtils.copyProperties(adminVO,adminEntity);
        adminMapper.insert(adminEntity);
    }

    @Override
    public void resetPassword(int admin_id, ResetPasswordVO resetPasswordVO) {
        AdminEntity adminEntity= findAdminByAdminId(admin_id);
        adminEntity.setA_password(resetPasswordVO.getPassword());
        adminMapper.updateById(adminEntity);
    }
}

