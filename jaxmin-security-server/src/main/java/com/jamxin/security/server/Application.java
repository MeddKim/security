package com.jamxin.security.server;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Import;

/**
 * @author: Administrator
 * @date : 2017/1/19 0019
 * @Description:
 */
@SpringBootApplication
@ServletComponentScan(basePackages = {"com.jamxin.security.server.filter",
        "com.jamxin.security.server.listener"} ) //开启扫描filter，listener，servlet注解的方法,可用basePackages指定包位置
public class Application {

    public static void main(String[] args) {
//        SpringApplication.run(Application.class,args);
        ApplicationContext ctx = SpringApplication.run(Application.class, args);
        String[] beanNames =  ctx.getBeanDefinitionNames();
        System.out.println("所以beanNames个数："+beanNames.length);
        for(String bn:beanNames){
            System.out.println(bn);
        }
    }
}
