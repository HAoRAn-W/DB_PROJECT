package com.hqz.wow.controller;

import com.hqz.wow.entity.ClassEntity;
import com.hqz.wow.entity.OfficeEntity;
import com.hqz.wow.entity.VehicleEntity;
import com.hqz.wow.service.ClassService;
import com.hqz.wow.service.OfficeService;
import com.hqz.wow.service.VehicleService;
import com.hqz.wow.vo.CarFilterVO;
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

    @Resource
    OfficeService officeService;

    // home page
    @RequestMapping("/index")
    public String index(Model model) {
        // show vehicle classes on home page
        List<ClassEntity> classEntityList = classService.getClassEntityList();
        model.addAttribute("classEntityList", classEntityList);
        return "index";
    }

    // view cars under specific class
    @GetMapping("/view-car/{classId}")
    public String viewCar(@PathVariable int classId, Model model) {
        // CarFilterVO is prepared to receive office choice and filter cars
        CarFilterVO carFilter = new CarFilterVO();
        model.addAttribute("carFilter", carFilter);

        // vehicle list of specific class is prepared
        // todo pagination
        List<VehicleEntity> vehicleEntityList = vehicleService.getVehicleListByClass(classId);
        model.addAttribute("vehicleEntityList", vehicleEntityList);

        model.addAttribute("classId", classId);

        // office list is prepared
        List<OfficeEntity> offices = officeService.getAllOffices();
        model.addAttribute("offices", offices);
        return "viewcar";
    }

    // when user specifies office, prepare responding car list
    @PostMapping("/view-car/{classId}")
    public String viewCarWithFilter(@PathVariable int classId, @ModelAttribute("carFilter") CarFilterVO carFilter, Model model) {
        model.addAttribute("carFilter", carFilter);
        List<VehicleEntity> vehicleEntityList = vehicleService.getVehicleListByClassAndOffice(classId, carFilter.getOfficeId());
        model.addAttribute("vehicleEntityList", vehicleEntityList);
        model.addAttribute("classId", classId);
        List<OfficeEntity> offices = officeService.getAllOffices();
        model.addAttribute("offices", offices);
        return "viewcar";
    }

}
