package com.jamxin.security.server.dao;

import com.jamxin.security.server.domain.UserProductRelation;

public interface UserProductRelationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UserProductRelation record);

    int insertSelective(UserProductRelation record);

    UserProductRelation selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UserProductRelation record);

    int updateByPrimaryKey(UserProductRelation record);
}