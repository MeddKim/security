package com.security.dao.annotation;

import java.lang.annotation.*;

/**
 * @author: Administrator
 * @date : 2017/2/8 0008
 * @Description:
 */
@Documented
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.SOURCE)
public @interface Property {
    String editor() default "";
}
