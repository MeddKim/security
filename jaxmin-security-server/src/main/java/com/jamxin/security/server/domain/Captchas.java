package com.jamxin.security.server.domain;

import java.io.Serializable;
import java.util.Date;


public class Captchas implements Serializable {
    private Long id;

    private String mobile;

    private String email;

    private String captchas;

    private Integer successIs;

    private Date expireTime;

    private Integer isAvailable;

    private Integer isDeleted;

    private Integer versionNo;

    private Long createUserid;

    private String createUsername;

    private String createUserip;

    private String createUsermac;

    private Date createTime;

    private Date createTimeDb;

    private String serverIp;

    private Long updateUserid;

    private String updateUsername;

    private String updateUserip;

    private String updateUsermac;

    private Date updateTime;

    private Date updateTimeDb;

    private String clientVersionno;

    private Long companyId;

    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile == null ? null : mobile.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getCaptchas() {
        return captchas;
    }

    public void setCaptchas(String captchas) {
        this.captchas = captchas == null ? null : captchas.trim();
    }

    public Integer getSuccessIs() {
        return successIs;
    }

    public void setSuccessIs(Integer successIs) {
        this.successIs = successIs;
    }

    public Date getExpireTime() {
        return expireTime;
    }

    public void setExpireTime(Date expireTime) {
        this.expireTime = expireTime;
    }

    public Integer getIsAvailable() {
        return isAvailable;
    }

    public void setIsAvailable(Integer isAvailable) {
        this.isAvailable = isAvailable;
    }

    public Integer getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(Integer isDeleted) {
        this.isDeleted = isDeleted;
    }

    public Integer getVersionNo() {
        return versionNo;
    }

    public void setVersionNo(Integer versionNo) {
        this.versionNo = versionNo;
    }

    public Long getCreateUserid() {
        return createUserid;
    }

    public void setCreateUserid(Long createUserid) {
        this.createUserid = createUserid;
    }

    public String getCreateUsername() {
        return createUsername;
    }

    public void setCreateUsername(String createUsername) {
        this.createUsername = createUsername == null ? null : createUsername.trim();
    }

    public String getCreateUserip() {
        return createUserip;
    }

    public void setCreateUserip(String createUserip) {
        this.createUserip = createUserip == null ? null : createUserip.trim();
    }

    public String getCreateUsermac() {
        return createUsermac;
    }

    public void setCreateUsermac(String createUsermac) {
        this.createUsermac = createUsermac == null ? null : createUsermac.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getCreateTimeDb() {
        return createTimeDb;
    }

    public void setCreateTimeDb(Date createTimeDb) {
        this.createTimeDb = createTimeDb;
    }

    public String getServerIp() {
        return serverIp;
    }

    public void setServerIp(String serverIp) {
        this.serverIp = serverIp == null ? null : serverIp.trim();
    }

    public Long getUpdateUserid() {
        return updateUserid;
    }

    public void setUpdateUserid(Long updateUserid) {
        this.updateUserid = updateUserid;
    }

    public String getUpdateUsername() {
        return updateUsername;
    }

    public void setUpdateUsername(String updateUsername) {
        this.updateUsername = updateUsername == null ? null : updateUsername.trim();
    }

    public String getUpdateUserip() {
        return updateUserip;
    }

    public void setUpdateUserip(String updateUserip) {
        this.updateUserip = updateUserip == null ? null : updateUserip.trim();
    }

    public String getUpdateUsermac() {
        return updateUsermac;
    }

    public void setUpdateUsermac(String updateUsermac) {
        this.updateUsermac = updateUsermac == null ? null : updateUsermac.trim();
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Date getUpdateTimeDb() {
        return updateTimeDb;
    }

    public void setUpdateTimeDb(Date updateTimeDb) {
        this.updateTimeDb = updateTimeDb;
    }

    public String getClientVersionno() {
        return clientVersionno;
    }

    public void setClientVersionno(String clientVersionno) {
        this.clientVersionno = clientVersionno == null ? null : clientVersionno.trim();
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
        sb.append(", mobile=").append(mobile);
        sb.append(", email=").append(email);
        sb.append(", captchas=").append(captchas);
        sb.append(", successIs=").append(successIs);
        sb.append(", expireTime=").append(expireTime);
        sb.append(", isAvailable=").append(isAvailable);
        sb.append(", isDeleted=").append(isDeleted);
        sb.append(", versionNo=").append(versionNo);
        sb.append(", createUserid=").append(createUserid);
        sb.append(", createUsername=").append(createUsername);
        sb.append(", createUserip=").append(createUserip);
        sb.append(", createUsermac=").append(createUsermac);
        sb.append(", createTime=").append(createTime);
        sb.append(", createTimeDb=").append(createTimeDb);
        sb.append(", serverIp=").append(serverIp);
        sb.append(", updateUserid=").append(updateUserid);
        sb.append(", updateUsername=").append(updateUsername);
        sb.append(", updateUserip=").append(updateUserip);
        sb.append(", updateUsermac=").append(updateUsermac);
        sb.append(", updateTime=").append(updateTime);
        sb.append(", updateTimeDb=").append(updateTimeDb);
        sb.append(", clientVersionno=").append(clientVersionno);
        sb.append(", companyId=").append(companyId);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}