// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.fiftyhrtz.phone.web;

import com.fiftyhrtz.phone.domain.PhoneGallary;
import com.fiftyhrtz.phone.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<PhoneGallary, String> ApplicationConversionServiceFactoryBean.getPhoneGallaryToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.fiftyhrtz.phone.domain.PhoneGallary, java.lang.String>() {
            public String convert(PhoneGallary phoneGallary) {
                return new StringBuilder().append(phoneGallary.getPName()).append(' ').append(phoneGallary.getColor()).toString();
            }
        };
    }
    
    public Converter<Long, PhoneGallary> ApplicationConversionServiceFactoryBean.getIdToPhoneGallaryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.fiftyhrtz.phone.domain.PhoneGallary>() {
            public com.fiftyhrtz.phone.domain.PhoneGallary convert(java.lang.Long id) {
                return PhoneGallary.findPhoneGallary(id);
            }
        };
    }
    
    public Converter<String, PhoneGallary> ApplicationConversionServiceFactoryBean.getStringToPhoneGallaryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.fiftyhrtz.phone.domain.PhoneGallary>() {
            public com.fiftyhrtz.phone.domain.PhoneGallary convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), PhoneGallary.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getPhoneGallaryToStringConverter());
        registry.addConverter(getIdToPhoneGallaryConverter());
        registry.addConverter(getStringToPhoneGallaryConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
