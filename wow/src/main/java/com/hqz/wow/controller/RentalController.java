package com.hqz.wow.controller;

import com.hqz.wow.entity.ClassEntity;
import com.hqz.wow.entity.VehicleEntity;
import com.hqz.wow.service.ClassService;
import com.hqz.wow.service.VehicleService;
import com.hqz.wow.vo.CarFilterVO;
import com.hqz.wow.vo.IndivCustomerVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class RentalController {

    @Resource
    ClassService classService;

    @Resource
    VehicleService vehicleService;

    @RequestMapping("/index")
    public String index(Model model) {
        List<ClassEntity> classEntityList = classService.getClassEntityList();
        model.addAttribute("classEntityList", classEntityList);
        return "index";
    }

    @GetMapping("/view-car/{classId}")
    public String viewCar(@PathVariable int classId, Model model) {
        CarFilterVO carFilter = new CarFilterVO();
        model.addAttribute("carFilter", carFilter);
        List<VehicleEntity> vehicleEntityList = vehicleService.getVehicleListByClass(classId);
        model.addAttribute("vehicleEntityList", vehicleEntityList);
        // todo
        return "viewcar";
    }

    @PostMapping("/view-car/{classId}")
    public String viewCarWithFilter(@PathVariable int classId, @ModelAttribute("carFilter") CarFilterVO carFilter) {
        //todo
        return "viewcar";
    }

}
