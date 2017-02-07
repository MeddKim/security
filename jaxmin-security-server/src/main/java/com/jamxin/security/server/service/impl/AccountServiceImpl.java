package com.jamxin.security.server.service.impl;

import com.github.pagehelper.PageHelper;
import com.jamxin.security.server.domain.User;
import com.jamxin.security.server.mapper.UserMapper;
import com.jamxin.security.server.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author: Administrator
 * @date : 2017/2/6 0006
 * @Description:
 */
@Service
public class AccountServiceImpl implements AccountService{

    @Autowired
    private UserMapper userDao;

    @Override
    public List<User> findUsersByParam(int page,int size) {
        PageHelper.startPage(page,size);
        return userDao.selectAll();
    }
}
