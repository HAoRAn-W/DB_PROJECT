package com.hqz.wow.controller;

import com.hqz.wow.entity.CustomerEntity;
import com.hqz.wow.entity.RentalServiceEntity;
import com.hqz.wow.entity.VehicleEntity;
import com.hqz.wow.service.CustomerService;
import com.hqz.wow.service.RentalService;
import com.hqz.wow.service.VehicleService;
import com.hqz.wow.service.security.AuthenticationService;
import org.springframework.ui.Model;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Controller
public class OrderSummaryController {

    @Resource
    RentalService rentalService;

    @Resource
    AuthenticationService authenticationService;

    @Resource
    CustomerService customerService;

    @Resource
    VehicleService vehicleService;

    /**
     * show customer's order summary
     * @param model model for the page
     * @return order-summary.html
     */
    @GetMapping("/order-summary")
    public String showOrderList(Model model){

        //get rental services info by customer email
        Authentication authentication = authenticationService.getAuthentication();
        String customerEmail = authentication.getName();
        CustomerEntity customerEntity = customerService.findCustomerByEmail(customerEmail);
        List<RentalServiceEntity> rentalServiceEntityList = rentalService.getRentalServiceListByCustomerId(customerEntity.getCustomerId());

        //get vehicle details by vin
        List<VehicleEntity> vehicleEntityList = new ArrayList<>();
        for(RentalServiceEntity rentalServiceEntity : rentalServiceEntityList){
            vehicleEntityList.add(vehicleService.getVehicleByVin(rentalServiceEntity.getVin()));
        }

        model.addAttribute("rentalServiceEntityList", rentalServiceEntityList);
        model.addAttribute("vehicleEntityList",vehicleEntityList);
        return "order-summary";
    }

}
