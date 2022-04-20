package com.hqz.wow.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RentalServiceController {

    @RequestMapping("/checkout")
    public String checkout() {
        return "checkout";
    }
}
