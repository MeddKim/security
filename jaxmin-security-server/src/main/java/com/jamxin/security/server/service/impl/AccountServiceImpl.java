package com.jamxin.security.server.service.impl;

import com.jamxin.security.server.dao.impl.UserDaoImpl;
import com.jamxin.security.server.domain.User;
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
    private UserDaoImpl userDao;

    @Override
    public List<User> findUsersByParam(int page,int size) {



        return null;
    }
}
