package com.jamxin.security.server.dao;

import com.jamxin.security.server.domain.UserManageCompany;

public interface UserManageCompanyMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UserManageCompany record);

    int insertSelective(UserManageCompany record);

    UserManageCompany selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UserManageCompany record);

    int updateByPrimaryKey(UserManageCompany record);
}