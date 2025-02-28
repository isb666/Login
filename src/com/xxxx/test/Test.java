package com.xxxx.test;

import com.xxxx.entity.User;
import com.xxxx.mapper.UserMapper;
import com.xxxx.util.GetSqlSession;
import org.apache.ibatis.session.SqlSession;

public class Test {
    public static void main(String[] args) {
        SqlSession session = GetSqlSession.createSqlSession();

        UserMapper usermapper =session.getMapper(UserMapper.class);

        User user = usermapper.getUserByUsername("admin");
        System.out.println(user);
    }
}
