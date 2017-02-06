package com.jamxin.security.server.dao;

import com.jamxin.security.server.domain.UserCookie;

public interface UserCookieMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UserCookie record);

    int insertSelective(UserCookie record);

    UserCookie selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UserCookie record);

    int updateByPrimaryKey(UserCookie record);
}