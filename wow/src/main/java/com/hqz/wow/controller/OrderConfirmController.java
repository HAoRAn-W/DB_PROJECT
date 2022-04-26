package com.hqz.wow.controller;


import com.hqz.wow.entity.CustomerEntity;
import com.hqz.wow.entity.OfficeEntity;
import com.hqz.wow.entity.VehicleEntity;
import com.hqz.wow.service.*;
import com.hqz.wow.service.security.AuthenticationService;
import com.hqz.wow.vo.CheckoutVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.validation.Valid;


@Controller
public class OrderConfirmController {

    @Resource
    VehicleService vehicleService;

    @Resource
    OfficeService officeService;

    @Resource
    RentalService rentalService;

    @Resource
    CustomerService customerService;

    @Autowired
    AuthenticationService authenticationService;

    @PostMapping("/order-confirm")
    public String orderConfirm(@RequestParam(value = "vin") String vin,
                               @Valid @ModelAttribute("checkoutVO") CheckoutVO checkoutVO,
                               BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            // input invalid, display error messages
        } else {
            VehicleEntity vehicleEntity = vehicleService.getVehicleByVin(vin);
            OfficeEntity officeEntity = officeService.getOfficeById(vehicleEntity.getOfficeId());

            Authentication authentication = authenticationService.getAuthentication();
            String customerEmail = authentication.getName();
            CustomerEntity customerEntity = customerService.findCustomerByEmail(customerEmail);

            rentalService.addRentalService(vehicleEntity, officeEntity, customerEntity, checkoutVO);
            vehicleService.rentVehicle(vin);
        }

        return "order-confirm";
    }
}
