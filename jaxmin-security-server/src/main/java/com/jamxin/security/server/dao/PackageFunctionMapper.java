package com.jamxin.security.server.dao;

import com.jamxin.security.server.domain.PackageFunction;

public interface PackageFunctionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PackageFunction record);

    int insertSelective(PackageFunction record);

    PackageFunction selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PackageFunction record);

    int updateByPrimaryKey(PackageFunction record);
}