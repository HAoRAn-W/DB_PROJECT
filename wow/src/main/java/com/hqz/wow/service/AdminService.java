package com.hqz.wow.service;

import com.hqz.wow.entity.AdminEntity;
import com.hqz.wow.vo.AdminVO;
import com.hqz.wow.vo.ResetPasswordVO;

public interface AdminService {

    AdminEntity findAdminByAdminId(int admin_id);

    boolean checkIfAdminExist(int admin_id);

    void registerAdmin(AdminVO adminVO);

    void resetPassword(int admin_id, ResetPasswordVO resetPasswordVO);
}
