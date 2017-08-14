/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blood.geolocation.dao;

import com.blood.geolocation.model.Division;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author rezwan
 */
@Repository
public class DivisionDaoImpl implements DivisionDao{
    @Autowired
    SessionFactory sessionFactory;
    
    @Override
    public List<Division> getDivisionList()
    {
        List<Division> divisionList = this.sessionFactory.getCurrentSession().createQuery("from Division").list();
        return divisionList;
    }
}
