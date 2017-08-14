/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blood.bloodgroup.service;

import com.blood.bloodgroup.model.BloodGroup;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.stereotype.Service;

/**
 *
 * @author rezwan
 */

public interface BloodGroupService {
    public List<BloodGroup> getBloodGroupList();
}
