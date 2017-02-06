package com.jamxin.security.server.controller;

import com.jamxin.security.server.domain.User;
import com.jamxin.security.server.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author: Administrator
 * @date : 2017/1/19 0019
 * @Description:
 */
@RestController
public class IndexController {

    @Autowired
    private UserMapper userDao;

    @RequestMapping("/")
    public String view(){
        StringBuffer str = new StringBuffer();
        return str.toString();
    }
}
