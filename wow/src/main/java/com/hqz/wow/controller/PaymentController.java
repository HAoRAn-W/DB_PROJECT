package com.hqz.wow.controller;

import com.hqz.wow.entity.InvoiceEntity;
import com.hqz.wow.entity.RentalServiceEntity;
import com.hqz.wow.entity.VehicleEntity;
import com.hqz.wow.service.CustomerService;
import com.hqz.wow.service.InvoiceService;
import com.hqz.wow.service.PaymentService;
import com.hqz.wow.service.RentalService;
import com.hqz.wow.service.VehicleService;
import com.hqz.wow.vo.PaymentVO;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import javax.validation.Valid;

@Controller
public class PaymentController {

    @Resource
    RentalService rentalService;

    @Resource
    VehicleService vehicleService;

    @Resource
    InvoiceService invoiceService;

    @Resource
    CustomerService customerService;

    @Resource
    PaymentService paymentService;

    @RequestMapping("/pay")
    public String showPaymentPage(@RequestParam(value = "serviceId") Integer serviceId, Model model) {
        RentalServiceEntity rentalServiceEntity = rentalService.getRentalServiceById(serviceId);

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String email = authentication.getName();
        int customerId = customerService.findIdByEmail(email);
        if (customerId != rentalServiceEntity.getCustomerId()) {
            // user and service mismatch
            model.addAttribute("usermismatch", true);
            return "payment-error";
        }

        InvoiceEntity invoiceEntity = invoiceService.getInvoiceById(serviceId);

        String vin = rentalServiceEntity.getVin();
        VehicleEntity vehicleEntity = vehicleService.getVehicleByVin(vin);

        if (!model.containsAttribute("paymentVO")) {
            PaymentVO paymentVO = new PaymentVO();
            model.addAttribute("paymentVO", paymentVO);
        }

        model.addAttribute("vehicleEntity", vehicleEntity);
        model.addAttribute("invoiceEntity", invoiceEntity);
        model.addAttribute("rentalServiceEntity", rentalServiceEntity);

        return "payment";
    }

    @PostMapping("/pay-process")
    public String processPayment(@RequestParam(value = "serviceid") Integer serviceId, Model model,
                                 @Valid @ModelAttribute("paymentVO") PaymentVO paymentVO,
                                 RedirectAttributes redirectAttributes, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            redirectAttributes.addFlashAttribute("org.springframework.validation.BindingResult.paymentVO", bindingResult);
            redirectAttributes.addFlashAttribute("paymentVO", paymentVO);
            return "redirect:/payment?serviceid=" + serviceId;
        }
        float paidAmount = paymentVO.getPaidAmount();
        float amountNeeded = paymentService.amountNeedToPay(serviceId);
        int compareResult = Float.compare(paidAmount, amountNeeded);
        if (compareResult < 0) {
            paymentVO.setServiceId(serviceId);
            try {
                paymentService.payBill(paymentVO);
            } catch (Exception e) {
                model.addAttribute("error", true);
                redirectAttributes.addFlashAttribute("org.springframework.validation.BindingResult.paymentVO", bindingResult);
                redirectAttributes.addFlashAttribute("paymentVO", paymentVO);
                return "redirect:/payment?serviceid=" + serviceId;
            }
            return "payment-confirm";
        } else if (compareResult > 0) {
            model.addAttribute("overpay", true);
            return "payment";
        } else {
            paymentVO.setServiceId(serviceId);
            try {
                paymentService.payBill(paymentVO);
                rentalService.completeService(serviceId);
            } catch (Exception e) {
                model.addAttribute("error", true);
                redirectAttributes.addFlashAttribute("org.springframework.validation.BindingResult.paymentVO", bindingResult);
                redirectAttributes.addFlashAttribute("paymentVO", paymentVO);
                return "redirect:/payment?serviceid=" + serviceId;
            }
            return "payment-confirm";
        }
    }
}
