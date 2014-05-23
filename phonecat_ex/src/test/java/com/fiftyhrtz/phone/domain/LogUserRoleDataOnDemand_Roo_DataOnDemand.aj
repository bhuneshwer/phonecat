// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.fiftyhrtz.phone.domain;

import com.fiftyhrtz.phone.domain.LogUserRole;
import com.fiftyhrtz.phone.domain.LogUserRoleDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect LogUserRoleDataOnDemand_Roo_DataOnDemand {
    
    declare @type: LogUserRoleDataOnDemand: @Component;
    
    private Random LogUserRoleDataOnDemand.rnd = new SecureRandom();
    
    private List<LogUserRole> LogUserRoleDataOnDemand.data;
    
    public LogUserRole LogUserRoleDataOnDemand.getNewTransientLogUserRole(int index) {
        LogUserRole obj = new LogUserRole();
        setRoleName(obj, index);
        return obj;
    }
    
    public void LogUserRoleDataOnDemand.setRoleName(LogUserRole obj, int index) {
        String roleName = "roleName_" + index;
        obj.setRoleName(roleName);
    }
    
    public LogUserRole LogUserRoleDataOnDemand.getSpecificLogUserRole(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        LogUserRole obj = data.get(index);
        Long id = obj.getId();
        return LogUserRole.findLogUserRole(id);
    }
    
    public LogUserRole LogUserRoleDataOnDemand.getRandomLogUserRole() {
        init();
        LogUserRole obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return LogUserRole.findLogUserRole(id);
    }
    
    public boolean LogUserRoleDataOnDemand.modifyLogUserRole(LogUserRole obj) {
        return false;
    }
    
    public void LogUserRoleDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = LogUserRole.findLogUserRoleEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'LogUserRole' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<LogUserRole>();
        for (int i = 0; i < 10; i++) {
            LogUserRole obj = getNewTransientLogUserRole(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}