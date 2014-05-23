package com.fiftyhrtz.phone.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class PhoneGallary {

    /**
     */
    private String PName;

    /**
     */
    private Boolean Bluetooth;

    /**
     */
    private String color;

    /**
     */
    private Boolean Available;
}
