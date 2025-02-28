package com.xxxx.entity.vo;
/*
*
* 消息模型对象
    * 状态码
    *       1----成功  0----失败
    * 提示信息
    *       字符串
    * 回显数据
    *       object对象
*
* */
public class MessageModel {
    private Integer code =1;
    private String msg ="成功";
    private Object object;

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public Object getObject() {
        return object;
    }

    public void setObject(Object object) {
        this.object = object;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
