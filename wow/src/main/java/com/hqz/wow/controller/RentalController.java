package com.hqz.wow.controller;

import com.hqz.wow.entity.ClassEntity;
import com.hqz.wow.service.ClassService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class RentalController {

    @Resource
    ClassService classService;

    @RequestMapping("/index")
    public String index(Model model) {
        List<ClassEntity> classEntityList = classService.getClassEntityList();
        model.addAttribute("classEntityList", classEntityList);
        return "index";
    }

    @RequestMapping("/carclass/{classId}")
    public String carClass(@PathVariable int classId, Model model) {
        // todo
        ClassEntity classEntity = classService.getClassEntityById(classId);
        model.addAttribute("carClass", classEntity);
        return "carclass";
    }
}
