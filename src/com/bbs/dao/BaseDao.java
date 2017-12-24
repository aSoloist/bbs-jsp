package com.bbs.dao;

import java.util.List;

interface BaseDao<T> {
    
    List<T> getAll();
    
    T getById(String id);
    
    int insert(T model);
    
    int update(T model);
    
    int delete(String id);
    
    boolean isIdExist(String id);
}
