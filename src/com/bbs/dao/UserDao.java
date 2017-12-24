package com.bbs.dao;

public interface UserDao extends BaseDao<User> {
    
    boolean isUserExist(String username);
    
}
