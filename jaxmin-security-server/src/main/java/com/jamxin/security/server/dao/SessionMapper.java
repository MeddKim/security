package com.jamxin.security.server.dao;

import com.jamxin.security.server.domain.Session;

public interface SessionMapper {
    int deleteByPrimaryKey(String id);

    int insert(Session record);

    int insertSelective(Session record);

    Session selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Session record);

    int updateByPrimaryKey(Session record);
}