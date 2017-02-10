package com.jamxin.security.server.mapper;

import com.jamxin.security.server.domain.User;
import com.jamxin.security.server.utils.BaseMapper;
import org.apache.ibatis.annotations.Insert;

/**
 * @author: Administrator
 * @date : 2017/2/6 0006
 * @Description:
 */
public interface UserMapper extends BaseMapper<User> {
    //        Role role = new Role();
    //        role.setType(2L);
    //        role.setProductType(2);
    //        role.setName("数据管理员");
    //
    //        role.setCompanyId(2L);
    @Insert("insert into jx_user(type, username,password,nickname,company_id) values(" +
            "#{type}, #{username},#{password},#{nickname},#{companyId})")
    public int addUser(User user);
}
