package com.jamxin.security.server.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class UserAddress implements Serializable {
    private Long id;

    private Long userId;

    private String userName;

    private String firstName;

    private Integer sex;

    private String lastName;

    private Long provinceId;

    private String provinceName;

    private Long cityId;

    private String cityName;

    private Long regionId;

    private String regionName;

    private BigDecimal longitude;

    private BigDecimal latitude;

    private String exactAddress;

    private String detailAddress;

    private String mobile;

    private Date useTime;

    private String identityCardNumber;

    private Integer defaultIs;

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

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName == null ? null : firstName.trim();
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName == null ? null : lastName.trim();
    }

    public Long getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(Long provinceId) {
        this.provinceId = provinceId;
    }

    public String getProvinceName() {
        return provinceName;
    }

    public void setProvinceName(String provinceName) {
        this.provinceName = provinceName == null ? null : provinceName.trim();
    }

    public Long getCityId() {
        return cityId;
    }

    public void setCityId(Long cityId) {
        this.cityId = cityId;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName == null ? null : cityName.trim();
    }

    public Long getRegionId() {
        return regionId;
    }

    public void setRegionId(Long regionId) {
        this.regionId = regionId;
    }

    public String getRegionName() {
        return regionName;
    }

    public void setRegionName(String regionName) {
        this.regionName = regionName == null ? null : regionName.trim();
    }

    public BigDecimal getLongitude() {
        return longitude;
    }

    public void setLongitude(BigDecimal longitude) {
        this.longitude = longitude;
    }

    public BigDecimal getLatitude() {
        return latitude;
    }

    public void setLatitude(BigDecimal latitude) {
        this.latitude = latitude;
    }

    public String getExactAddress() {
        return exactAddress;
    }

    public void setExactAddress(String exactAddress) {
        this.exactAddress = exactAddress == null ? null : exactAddress.trim();
    }

    public String getDetailAddress() {
        return detailAddress;
    }

    public void setDetailAddress(String detailAddress) {
        this.detailAddress = detailAddress == null ? null : detailAddress.trim();
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile == null ? null : mobile.trim();
    }

    public Date getUseTime() {
        return useTime;
    }

    public void setUseTime(Date useTime) {
        this.useTime = useTime;
    }

    public String getIdentityCardNumber() {
        return identityCardNumber;
    }

    public void setIdentityCardNumber(String identityCardNumber) {
        this.identityCardNumber = identityCardNumber == null ? null : identityCardNumber.trim();
    }

    public Integer getDefaultIs() {
        return defaultIs;
    }

    public void setDefaultIs(Integer defaultIs) {
        this.defaultIs = defaultIs;
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
        sb.append(", userId=").append(userId);
        sb.append(", userName=").append(userName);
        sb.append(", firstName=").append(firstName);
        sb.append(", sex=").append(sex);
        sb.append(", lastName=").append(lastName);
        sb.append(", provinceId=").append(provinceId);
        sb.append(", provinceName=").append(provinceName);
        sb.append(", cityId=").append(cityId);
        sb.append(", cityName=").append(cityName);
        sb.append(", regionId=").append(regionId);
        sb.append(", regionName=").append(regionName);
        sb.append(", longitude=").append(longitude);
        sb.append(", latitude=").append(latitude);
        sb.append(", exactAddress=").append(exactAddress);
        sb.append(", detailAddress=").append(detailAddress);
        sb.append(", mobile=").append(mobile);
        sb.append(", useTime=").append(useTime);
        sb.append(", identityCardNumber=").append(identityCardNumber);
        sb.append(", defaultIs=").append(defaultIs);
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