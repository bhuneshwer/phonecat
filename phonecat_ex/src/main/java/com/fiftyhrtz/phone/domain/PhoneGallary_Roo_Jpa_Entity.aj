// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.fiftyhrtz.phone.domain;

import com.fiftyhrtz.phone.domain.PhoneGallary;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect PhoneGallary_Roo_Jpa_Entity {
    
    declare @type: PhoneGallary: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long PhoneGallary.id;
    
    @Version
    @Column(name = "version")
    private Integer PhoneGallary.version;
    
    public Long PhoneGallary.getId() {
        return this.id;
    }
    
    public void PhoneGallary.setId(Long id) {
        this.id = id;
    }
    
    public Integer PhoneGallary.getVersion() {
        return this.version;
    }
    
    public void PhoneGallary.setVersion(Integer version) {
        this.version = version;
    }
    
}
