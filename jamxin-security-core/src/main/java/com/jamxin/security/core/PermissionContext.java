package com.jamxin.security.core;

import java.io.Serializable;
import java.util.Set;

/**
 * @author: Meddkim
 * @date : 2017/1/18 0018
 * @Description:
 */
public class PermissionContext implements Serializable{

    private static final long serialVersionUID = -6100381608265204768L;

    private Set<String> roles;
    private Set<String> permissions;

    public Set<String> getRoles() {
        return roles;
    }

    public void setRoles(Set<String> roles) {
        this.roles = roles;
    }

    public Set<String> getPermissions() {
        return permissions;
    }

    public void setPermissions(Set<String> permissions) {
        this.permissions = permissions;
    }

    @Override
    public String toString() {
        return "PermissionContext{" +
                ", roles=" + roles +
                ", permissions=" + permissions +
                '}';
    }
}
