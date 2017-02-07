package com.jamxin.security.server.controller;

import com.google.gson.Gson;
import com.jamxin.security.server.domain.User;
import com.jamxin.security.server.service.impl.AccountServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author: Administrator
 * @date : 2017/2/7 0007
 * @Description:
 */
@RestController
@RequestMapping ( "/account" )
public class AccountController {

    @Autowired
    private AccountServiceImpl accountService;

    @RequestMapping("/user/list/{page}/{size}")
    public String findUserList(@PathVariable("page") int page,@PathVariable("size") int size){
        List<User> userList = accountService.findUsersByParam(page,size);

        String jsonStr = new Gson().toJson(userList);

        return jsonStr;
    }

    @RequestMapping("/user/add")
    public boolean addUser(){
        return true;
    }
}
