// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.fiftyhrtz.phone.domain;

import com.fiftyhrtz.phone.domain.LogUsers1;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect LogUser_Roo_Jpa_Entity {
    
    declare @type: LogUsers1: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long LogUsers1.id;
    
    @Version
    @Column(name = "version")
    private Integer LogUsers1.version;
    
    public Long LogUsers1.getId() {
        return this.id;
    }
    
    public void LogUsers1.setId(Long id) {
        this.id = id;
    }
    
    public Integer LogUsers1.getVersion() {
        return this.version;
    }
    
    public void LogUsers1.setVersion(Integer version) {
        this.version = version;
    }
    
}
