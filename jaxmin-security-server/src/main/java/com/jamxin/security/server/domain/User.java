package com.jamxin.security.server.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class User implements Serializable {
    private Long id;

    private Integer type;

    private String username;

    private String password;

    private String nickname;

    private Long companyId;

    private String companyName;

    private String contactPerson;

    private String mobile;

    private String telephone;

    private String email;

    private String address;

    private Integer status;

    private String remarks;

    private BigDecimal points;

    private Integer sex;

    private String headPicUrl;

    private Date birthday;

    private String userProvince;

    private String userCity;

    private String userRegion;

    private String userAddress;

    private Date checkTime;

    private Long checkUserId;

    private String identityCardName;

    private Integer isCertification;

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

    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname == null ? null : nickname.trim();
    }

    public Long getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Long companyId) {
        this.companyId = companyId;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName == null ? null : companyName.trim();
    }

    public String getContactPerson() {
        return contactPerson;
    }

    public void setContactPerson(String contactPerson) {
        this.contactPerson = contactPerson == null ? null : contactPerson.trim();
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile == null ? null : mobile.trim();
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone == null ? null : telephone.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    public BigDecimal getPoints() {
        return points;
    }

    public void setPoints(BigDecimal points) {
        this.points = points;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getHeadPicUrl() {
        return headPicUrl;
    }

    public void setHeadPicUrl(String headPicUrl) {
        this.headPicUrl = headPicUrl == null ? null : headPicUrl.trim();
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getUserProvince() {
        return userProvince;
    }

    public void setUserProvince(String userProvince) {
        this.userProvince = userProvince == null ? null : userProvince.trim();
    }

    public String getUserCity() {
        return userCity;
    }

    public void setUserCity(String userCity) {
        this.userCity = userCity == null ? null : userCity.trim();
    }

    public String getUserRegion() {
        return userRegion;
    }

    public void setUserRegion(String userRegion) {
        this.userRegion = userRegion == null ? null : userRegion.trim();
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress == null ? null : userAddress.trim();
    }

    public Date getCheckTime() {
        return checkTime;
    }

    public void setCheckTime(Date checkTime) {
        this.checkTime = checkTime;
    }

    public Long getCheckUserId() {
        return checkUserId;
    }

    public void setCheckUserId(Long checkUserId) {
        this.checkUserId = checkUserId;
    }

    public String getIdentityCardName() {
        return identityCardName;
    }

    public void setIdentityCardName(String identityCardName) {
        this.identityCardName = identityCardName == null ? null : identityCardName.trim();
    }

    public Integer getIsCertification() {
        return isCertification;
    }

    public void setIsCertification(Integer isCertification) {
        this.isCertification = isCertification;
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

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", type=").append(type);
        sb.append(", username=").append(username);
        sb.append(", password=").append(password);
        sb.append(", nickname=").append(nickname);
        sb.append(", companyId=").append(companyId);
        sb.append(", companyName=").append(companyName);
        sb.append(", contactPerson=").append(contactPerson);
        sb.append(", mobile=").append(mobile);
        sb.append(", telephone=").append(telephone);
        sb.append(", email=").append(email);
        sb.append(", address=").append(address);
        sb.append(", status=").append(status);
        sb.append(", remarks=").append(remarks);
        sb.append(", points=").append(points);
        sb.append(", sex=").append(sex);
        sb.append(", headPicUrl=").append(headPicUrl);
        sb.append(", birthday=").append(birthday);
        sb.append(", userProvince=").append(userProvince);
        sb.append(", userCity=").append(userCity);
        sb.append(", userRegion=").append(userRegion);
        sb.append(", userAddress=").append(userAddress);
        sb.append(", checkTime=").append(checkTime);
        sb.append(", checkUserId=").append(checkUserId);
        sb.append(", identityCardName=").append(identityCardName);
        sb.append(", isCertification=").append(isCertification);
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
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}