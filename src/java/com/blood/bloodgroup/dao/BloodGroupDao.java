/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package blood.bloodgroup.dao;

import blood.bloodgroup.model.BloodGroup;
import java.util.List;

/**
 *
 * @author rezwan
 */
public interface BloodGroupDao {
    public List<BloodGroup> getBloodGroupList();
}
