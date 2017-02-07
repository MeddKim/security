package com.jamxin.security.server.service;

import com.jamxin.security.server.domain.Resource;
import com.jamxin.security.server.domain.Role;

import java.util.List;

/**
 * @author: Administrator
 * @date : 2017/2/7 0007
 * @Description:
 */
public interface RoleService {

    //添加一个角色，同时建立权限角色关联关系
    public boolean addRoleAndPerssion(Role role, List<Resource> resources);

    //分页查询查询角色列表
    public List<Role> findRoles(int page,int size);

    //更新角色信息
    public boolean updateRoleAndPerssion(Role role, List<Resource> resources);

    //删除角色，同时也要删除该角色相关的权限关系
    public boolean deleteRole(Integer roleId);
}
