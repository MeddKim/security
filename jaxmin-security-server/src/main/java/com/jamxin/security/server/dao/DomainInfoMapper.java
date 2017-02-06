package com.jamxin.security.server.dao;

import com.jamxin.security.server.domain.DomainInfo;

public interface DomainInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(DomainInfo record);

    int insertSelective(DomainInfo record);

    DomainInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(DomainInfo record);

    int updateByPrimaryKey(DomainInfo record);
}