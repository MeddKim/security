package com.jamxin.security.server.controller;

import com.jamxin.security.server.dao.impl.UserDaoImpl;
import com.jamxin.security.server.domain.User;
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
    private UserDaoImpl userDao;

    @RequestMapping("/")
    public String view(){
        User user = userDao.selectByPrimaryKey(571180L);
        StringBuffer str = new StringBuffer();
        str.append(user.getUsername());
        str.append("-----");
        str.append(user.getNickname());


        List<User> userList = userDao.findUserPage();
        System.out.println(userList.size());
        return str.toString();
    }
}
