package com.hqz.wow.service.security;

import com.hqz.wow.entity.AdminEntity;
import com.hqz.wow.entity.CustomerEntity;
import com.hqz.wow.service.AdminService;
import com.hqz.wow.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@Order(2)
public class AdminDetailServiceImpl implements UserDetailsService {

    @Autowired
    AdminService adminService ;

    @Override
    public UserDetails loadUserByUsername(String admin_id) throws UsernameNotFoundException {
        AdminEntity admin = adminService.findAdminByAdminId((Integer.parseInt(admin_id)));
        if(admin == null) {
            throw new UsernameNotFoundException(admin_id);
        }
        List<SimpleGrantedAuthority> authorities = new ArrayList<>();
        authorities.add(new SimpleGrantedAuthority("ROLE_" + admin.getAdmin_id()));
        return new User(admin.getAdmin_id() + "", admin.getA_password(), authorities);
    }
}
