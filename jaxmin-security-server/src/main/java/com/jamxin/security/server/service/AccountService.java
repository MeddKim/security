package com.jamxin.security.server.service;

import com.jamxin.security.server.domain.User;

import java.util.List;

/**
 * @author: Administrator
 * @date : 2017/2/6 0006
 * @Description:
 */
public interface AccountService {

    /**
     * 查询账户列表
     * @return
     */
    List<User> findUsersByParam(int page,int size);
}
