package com.jamxin.security.server.dao;

import com.jamxin.security.server.domain.UserThird;

public interface UserThirdMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UserThird record);

    int insertSelective(UserThird record);

    UserThird selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UserThird record);

    int updateByPrimaryKey(UserThird record);
}