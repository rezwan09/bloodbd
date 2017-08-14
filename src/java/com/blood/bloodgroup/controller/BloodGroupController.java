/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blood.bloodgroup.controller;

import com.blood.bloodgroup.model.BloodGroup;
import com.blood.bloodgroup.service.BloodGroupService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author rezwan
 */
@Controller
public class BloodGroupController {
    @Autowired
    private BloodGroupService bloodGroupService;
    
    @RequestMapping(value = "/bloodgroup/id")
    public String getBloodGroup()
    {
        System.out.println("in blood group controller");
        return "bloodGroup";
    }
    
    @RequestMapping(value = "/bloodgroup/list")
    public String getBloodGroupList(Model model, HttpServletRequest request)
    {
        System.out.println("in blood group list controller");
        List<BloodGroup> bloodGroups = this.bloodGroupService.getBloodGroupList();
        System.out.println("list size in controller = "+bloodGroups.size());
        model.addAttribute("pageName","Blood Book");
        return "bloodGroup";
    }
}
