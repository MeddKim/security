package com.jamxin.security.server.utils;

import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.common.MySqlMapper;

/**
 * @author: Administrator
 * @date : 2017/2/6 0006
 * @Description:
 */
public interface BaseMapper<T> extends Mapper<T> , MySqlMapper<T>{

}
