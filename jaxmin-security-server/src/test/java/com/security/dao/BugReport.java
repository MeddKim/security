package com.security.dao;


import jdk.nashorn.internal.ir.annotations.Reference;

/**
 * @author: Administrator
 * @date : 2017/2/8 0008
 * @Description:
 */
public @interface BugReport {
    enum Status {UNCONFIRMED,CONFIRMED,FIXED,NOTABUG}
    boolean showStopper() default false;
    String assignedTo() default "[none]";
    Class<?> testCase() default Void.class;
    int severity = 0;
    Reference ref() default @Reference();
    Status status() default Status.UNCONFIRMED;
    String[] reporterBy();
}
