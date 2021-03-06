package com.jamxin.security.core;

import org.apache.shiro.session.Session;

import java.io.Serializable;

/**
 * @author: Administrator
 * @date : 2017/1/18 0018
 * @Description:
 */
public interface RemoteServiceInterface {

    public Session getSession(String appKey,Serializable sessionId);
    Serializable createSession(Session session);
    public void updateSession(String appKey,Session session);
    public void deleteSession(String appKey,Session session);

    public PermissionContext getPermissions(String appKey,String username);
}
