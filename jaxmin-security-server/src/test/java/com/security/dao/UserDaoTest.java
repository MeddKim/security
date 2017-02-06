package com.security.dao;

import com.github.pagehelper.PageHelper;
import com.jamxin.security.server.Application;
import com.jamxin.security.server.dao.impl.UserDaoImpl;
import com.jamxin.security.server.domain.User;
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
    private UserDaoImpl userDao;

    @Test
    public void testFindList(){
        PageHelper.offsetPage(1,1);
        List<User> userList = userDao.findUserPage();

        for (User user:userList) {
            System.out.println(user.getNickname());
        }
    }
}
