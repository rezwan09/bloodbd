/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blood.bloodgroup.service;

import com.blood.bloodgroup.dao.BloodGroupDao;
import com.blood.bloodgroup.model.BloodGroup;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author rezwan
 */
@Service
@Transactional
public class BloodGroupServiceImpl implements BloodGroupService{
    @Autowired
    BloodGroupDao bloodGroupDao;
    
    @Override
    public List<BloodGroup> getBloodGroupList()
    {
        return bloodGroupDao.getBloodGroupList();
    }
    
}
