package com.hqz.wow.controller;

import com.hqz.wow.entity.ClassEntity;
import com.hqz.wow.entity.OfficeEntity;
import com.hqz.wow.entity.VehicleEntity;
import com.hqz.wow.service.*;
import com.hqz.wow.vo.CheckoutVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.List;


/**
 * Controller for rental service related views (checkout, history service, ongoing service)
 */
@Controller
public class RentalServiceController {


    @Resource
    VehicleService vehicleService;

    @Resource
    OfficeService officeService;

    @Resource
    ClassService classService;

    @Resource
    RentalService rentalService;


    /**
     * @param vin   vehicle vin number
     * @param model Model for the page
     * @return checkout.html
     */
    @GetMapping("/checkout")
    public String checkout(@RequestParam(value = "vin") String vin, Model model) {
        CheckoutVO checkoutVO = new CheckoutVO();

        VehicleEntity vehicleEntity = vehicleService.getVehicleByVin(vin);
        //The office where the chosen vehicle belong
        OfficeEntity officeEntity = officeService.getOfficeById(vehicleEntity.getOfficeId());
        //All offices
        List<OfficeEntity> officeEntityList = officeService.getAllOffices();
        //displace the rental rate
        ClassEntity classEntity = classService.getClassEntityById(vehicleEntity.getClassId());


        model.addAttribute("checkoutVO", checkoutVO);

        model.addAttribute("vehicleEntity", vehicleEntity);
        model.addAttribute("officeEntity", officeEntity);
        model.addAttribute("officeEntityList", officeEntityList);
        model.addAttribute("classEntity", classEntity);
        return "checkout";
    }

}
