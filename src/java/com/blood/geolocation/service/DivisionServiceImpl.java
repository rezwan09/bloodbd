/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blood.geolocation.service;

import com.blood.geolocation.dao.DivisionDao;
import com.blood.geolocation.model.Division;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author rezwan
 */
@Service
@Transactional
public class DivisionServiceImpl implements DivisionService{
    @Autowired
    DivisionDao divisionDao;
    
    @Override
    public List<Division> getDivisionList()
    {
        return this.divisionDao.getDivisionList();
    }
}
