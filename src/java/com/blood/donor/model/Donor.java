/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blood.donor.model;

import com.blood.bloodgroup.model.BloodGroup;
import com.blood.geolocation.model.District;
import com.blood.geolocation.model.Division;
import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;


/**
 *
 * @author rezwan
 */
@Entity
@Table(name = "donor")
public class Donor {
    @Id
    @GeneratedValue (strategy = GenerationType.AUTO)
    private Integer id;
    
    @Column(name = "name")
    private String name;
    
    @Column(name = "gender")
    private String gender;
    
    @Column (name = "age")
    private Integer age;
    
    @JoinColumn (name = "blood_group_id")
    BloodGroup bloodGroup;
    
    @Column (name = "num_of_donation")
    private Integer numberOfDonation;
    
    @Column (name = "active")
    private boolean active;
    
    @Column (name = "last_donation_date")
    private Calendar lastDonationDate;
    
    @Column (name = "mobile_no")
    private String mobileNumber;
    
    @Column (name = "division")
    Division division;
    
    @Column (name = "district")
    District district;
    
    @Column (name = "address")
    private String address;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public BloodGroup getBloodGroup() {
        return bloodGroup;
    }

    public void setBloodGroup(BloodGroup bloodGroup) {
        this.bloodGroup = bloodGroup;
    }

    public Integer getNumberOfDonation() {
        return numberOfDonation;
    }

    public void setNumberOfDonation(Integer numberOfDonation) {
        this.numberOfDonation = numberOfDonation;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public Calendar getLastDonationDate() {
        return lastDonationDate;
    }

    public void setLastDonationDate(Calendar lastDonationDate) {
        this.lastDonationDate = lastDonationDate;
    }

    public String getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    public Division getDivision() {
        return division;
    }

    public void setDivision(Division division) {
        this.division = division;
    }

    public District getDistrict() {
        return district;
    }

    public void setDistrict(District district) {
        this.district = district;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    
    
}
