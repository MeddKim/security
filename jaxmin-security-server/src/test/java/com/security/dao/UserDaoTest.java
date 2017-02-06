package com.security.dao;

import com.github.pagehelper.PageHelper;
import com.jamxin.security.server.Application;
import com.jamxin.security.server.domain.User;
import com.jamxin.security.server.mapper.UserMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.util.List;

/**
 * @author: Administrator
 * @date : 2017/2/6 0006
 * @Description:
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@WebAppConfiguration
public class UserDaoTest {

    @Autowired
    private UserMapper userMapper;

    @Test
    public void testFindList(){
        PageHelper.startPage(2,3);
        List<User> userList = userMapper.selectAll();

        for (User user:userList) {
            System.out.println(user.getNickname());
        }
    }
}
