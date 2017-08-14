/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blood.bloodgroup.controller;

import com.blood.donor.model.Donor;
import com.blood.geolocation.model.Division;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author rezwan
 */
@Controller
public class DonorController {
    
    @RequestMapping(value = "/donor/create")
    public String addBloodDonor(HttpServletRequest request, Model model)
    {
        System.out.println("In donor create");
        List<Division> divisionList = null;
        Donor donor = new Donor();
        model.addAttribute("donor", donor);
        model.addAttribute("divisionList", divisionList);
        model.addAttribute("actionType","create");
        System.out.println("In donor create ok");
        return "donor";
    }
}
