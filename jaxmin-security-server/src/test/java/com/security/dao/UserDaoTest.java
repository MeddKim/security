package com.security.dao;

import com.github.pagehelper.PageHelper;
import com.jamxin.security.server.Application;
import com.jamxin.security.server.domain.Role;
import com.jamxin.security.server.domain.User;
import com.jamxin.security.server.mapper.RoleMapper;
import com.jamxin.security.server.mapper.UserMapper;
import com.jamxin.security.server.service.AccountService;
import com.jamxin.security.server.service.impl.AccountServiceImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.util.Date;
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
    @Autowired
    private RoleMapper roleMapper;

    @Autowired
    private AccountServiceImpl accountService;

    @Test
    public void testFindList(){
        PageHelper.startPage(2,3);
        List<User> userList = userMapper.selectAll();

        for (User user:userList) {
            System.out.println(user.getNickname());
        }
    }

    @Test
    public void testFindUserList(){
        List<User> userList = accountService.findUsersByParam(1,2);

        for (User user:userList) {
            System.out.println(user.getNickname());
        }
    }

    @Test
    public void testInsert(){
//        Role role = new Role();
//        role.setType(2L);
//        role.setProductType(2);
//        role.setName("数据管理员");
//
//        role.setCompanyId(2L);
//        int record = roleMapper.insert(role);
        User user = new User();
        user.setType(2);
        user.setUsername("张三");
        user.setCompanyId(1L);
        user.setNickname("Meddkim");
        user.setPassword("123");
        userMapper.addUser(user);
    }

}
