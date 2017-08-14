/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package blood.bloodgroup.dao;

import blood.bloodgroup.model.BloodGroup;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author rezwan
 */
@Repository
public class BloodGroupDaoImpl implements BloodGroupDao {
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public List<BloodGroup> getBloodGroupList() {
        List<BloodGroup> bloodGroups = this.sessionFactory.getCurrentSession().createQuery("from BloodGroup").list();
        System.out.println("Size of blood group list is = "+bloodGroups.size());
        return bloodGroups;
    }
}
