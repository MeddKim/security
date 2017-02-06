package com.jamxin.security.server.dao;

import com.jamxin.security.server.domain.Captchas;

public interface CaptchasMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Captchas record);

    int insertSelective(Captchas record);

    Captchas selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Captchas record);

    int updateByPrimaryKey(Captchas record);
}