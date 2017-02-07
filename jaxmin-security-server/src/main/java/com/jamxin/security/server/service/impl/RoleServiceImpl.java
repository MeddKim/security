package com.jamxin.security.server.service.impl;

import com.jamxin.security.server.domain.Resource;
import com.jamxin.security.server.domain.Role;
import com.jamxin.security.server.mapper.ResourceMapper;
import com.jamxin.security.server.mapper.RoleMapper;
import com.jamxin.security.server.mapper.RoleResourceMapper;
import com.jamxin.security.server.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author: Administrator
 * @date : 2017/2/7 0007
 * @Description:
 */
public class RoleServiceImpl implements RoleService {


    @Autowired
    private RoleMapper roleMapper;
    @Autowired
    private ResourceMapper resourceMapper;
    @Autowired
    private RoleResourceMapper roleResourceMapper;

    @Transactional
    @Override
    public boolean addRoleAndPerssion(Role role, List<Resource> resources) {
        //
        roleMapper.insert(role);
        return true;
    }

    @Override
    public List<Role> findRoles(int page, int size) {
        return null;
    }

    @Override
    public boolean updateRoleAndPerssion(Role role, List<Resource> resources) {
        return false;
    }

    @Override
    public boolean deleteRole(Integer roleId) {
        return false;
    }
}
