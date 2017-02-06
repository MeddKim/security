package com.jamxin.security.server.dao;

import com.jamxin.security.server.domain.Package;

public interface PackageMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Package record);

    int insertSelective(Package record);

    Package selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Package record);

    int updateByPrimaryKey(Package record);
}