/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blood.geolocation.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Id;

/**
 *
 * @author rezwan
 */
public class Division implements Serializable{
    
    @Id
    @Column(name = "id", columnDefinition = "tinyint(2) unsigned")
    private Integer id;
    
    @Column(name = "name")
    private String name;

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
    
    
}
