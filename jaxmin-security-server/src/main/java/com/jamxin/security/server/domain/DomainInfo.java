package com.jamxin.security.server.domain;

import java.io.Serializable;

public class DomainInfo implements Serializable {
    private Long id;

    private Long coolieLife;

    private String cookieDomain;

    private String accessDomain;

    private Long companyId;

    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getCoolieLife() {
        return coolieLife;
    }

    public void setCoolieLife(Long coolieLife) {
        this.coolieLife = coolieLife;
    }

    public String getCookieDomain() {
        return cookieDomain;
    }

    public void setCookieDomain(String cookieDomain) {
        this.cookieDomain = cookieDomain == null ? null : cookieDomain.trim();
    }

    public String getAccessDomain() {
        return accessDomain;
    }

    public void setAccessDomain(String accessDomain) {
        this.accessDomain = accessDomain == null ? null : accessDomain.trim();
    }

    public Long getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Long companyId) {
        this.companyId = companyId;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", coolieLife=").append(coolieLife);
        sb.append(", cookieDomain=").append(cookieDomain);
        sb.append(", accessDomain=").append(accessDomain);
        sb.append(", companyId=").append(companyId);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}