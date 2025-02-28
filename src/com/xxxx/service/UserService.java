package com.xxxx.service;

import com.xxxx.entity.User;
import com.xxxx.entity.vo.MessageModel;
import com.xxxx.mapper.UserMapper;
import com.xxxx.util.GetSqlSession;
import com.xxxx.util.StringUtil;
import org.apache.ibatis.session.SqlSession;

public class UserService {
    public static MessageModel userLogin(String uname, String upwd){
        MessageModel messageModel = new MessageModel();

        User u = new User();
        u.setUsername(uname);
        u.setPassword(upwd);
        messageModel.setObject(u);

        if(StringUtil.isEmpty(uname) || StringUtil.isEmpty(upwd)){
            messageModel.setCode(0);
            messageModel.setMsg("用户姓名密码不能为空！");


            return messageModel;
        }

        SqlSession sqlSession = GetSqlSession.createSqlSession();
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
        User user =userMapper.getUserByUsername(uname);
        if(user == null){
            messageModel.setCode(0);
            messageModel.setMsg("用户不存在！");
            return messageModel;
        }
        if(!upwd.equals(user.getPassword())){
            messageModel.setCode(0);
            messageModel.setMsg("用户密码不正确");
            return messageModel;
        }
        messageModel.setObject(user);

        return messageModel;
    }
}
