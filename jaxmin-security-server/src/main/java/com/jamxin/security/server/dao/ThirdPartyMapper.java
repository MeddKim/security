package com.jamxin.security.server.dao;

import com.jamxin.security.server.domain.ThirdParty;

public interface ThirdPartyMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ThirdParty record);

    int insertSelective(ThirdParty record);

    ThirdParty selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ThirdParty record);

    int updateByPrimaryKey(ThirdParty record);
}