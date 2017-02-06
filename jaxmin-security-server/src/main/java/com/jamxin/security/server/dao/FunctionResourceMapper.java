package com.jamxin.security.server.dao;

import com.jamxin.security.server.domain.FunctionResource;

public interface FunctionResourceMapper {
    int deleteByPrimaryKey(Long id);

    int insert(FunctionResource record);

    int insertSelective(FunctionResource record);

    FunctionResource selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(FunctionResource record);

    int updateByPrimaryKey(FunctionResource record);
}