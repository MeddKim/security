package com.jamxin.security.server.dao.impl;

import com.github.pagehelper.PageHelper;
import com.jamxin.security.server.dao.UserMapper;
import com.jamxin.security.server.domain.User;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author: Administrator
 * @date : 2017/1/19 0019
 * @Description:
 */
@Repository
public class UserDaoImpl implements UserMapper {

    @Autowired
    private SqlSessionTemplate sessionTemplate;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return 0;
    }

    @Override
    public int insert(User record) {
        return 0;
    }

    @Override
    public int insertSelective(User record) {
        return 0;
    }

    @Override
    public User selectByPrimaryKey(Long id) {
        return (User)sessionTemplate.selectOne("com.jamxin.security.server.dao.UserMapper.selectByPrimaryKey",id);
    }

    @Override
    public int updateByPrimaryKeySelective(User record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(User record) {
        return 0;
    }

    @Override
    public List<User> findUserPage(){
        return sessionTemplate.selectList("com.jamxin.security.server.dao.UserMapper.selectUserList");
    }
}
