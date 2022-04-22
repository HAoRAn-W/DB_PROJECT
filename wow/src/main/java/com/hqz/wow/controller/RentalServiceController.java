package com.hqz.wow.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Controller for rental service related views (checkout, history service, ongoing service)
 */
@Controller
public class RentalServiceController {

    @RequestMapping("/checkout")
    public String checkout() {
        return "checkout";
    }
}
