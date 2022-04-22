package com.hqz.wow.controller;

import com.hqz.wow.entity.ClassEntity;
import com.hqz.wow.entity.OfficeEntity;
import com.hqz.wow.entity.VehicleEntity;
import com.hqz.wow.service.ClassService;
import com.hqz.wow.service.OfficeService;
import com.hqz.wow.service.VehicleService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Controller for vehicle display related views
 */
@Controller
public class VehicleViewController {

    @Resource
    ClassService classService;

    @Resource
    VehicleService vehicleService;

    @Resource
    OfficeService officeService;

    /**
     * home page
     *
     * @param model model for the page
     * @return index.html
     */
    @RequestMapping("/index")
    public String index(Model model) {
        // show vehicle class list on home page
        // todo pagination
        List<ClassEntity> classEntityList = classService.getClassEntityList();
        model.addAttribute("classEntityList", classEntityList);
        return "index";
    }

    /**
     * display vehicles under certain class and office
     *
     * @param classId  vehicle class id in request params
     * @param officeId office id in request params (not required)
     * @param model    model for the page
     * @return viewcar.html
     */
    @RequestMapping("/view-car")
    public String viewCar(@RequestParam(value = "classid") Integer classId, @RequestParam(value = "officeid", required = false) Integer officeId, Model model) {
        List<VehicleEntity> vehicleEntityList;
        if (officeId != null) {
            vehicleEntityList = vehicleService.getVehicleListByClassAndOffice(classId, officeId);
        } else {
            vehicleEntityList = vehicleService.getVehicleListByClass(classId);
        }

        // vehicle list of specific class is prepared
        // todo pagination
        model.addAttribute("vehicleEntityList", vehicleEntityList);

        // office list is prepared
        List<OfficeEntity> offices = officeService.getAllOffices();
        model.addAttribute("offices", offices);

        model.addAttribute("classId", classId);
        return "viewcar";
    }
}
