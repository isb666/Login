<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, sans-serif;
        }
        .bg {
            background-image: url('./pic/bg.jpg'); /* 替换为你的图片路径 */
            height: 100%;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .header {
            text-align: center;
            padding: 50px 20px 20px 20px; /* 增加了顶部内边距 */
            background-color: rgba(0, 0, 0, 0); /* 半透明黑色背景 */
            color: white;
            position: absolute;
            width: 100%;
            top: 0;
            left: 0;
        }
        .login-container {
            background-color: rgba(255, 255, 255, 0.8); /* 半透明背景 */
            padding: 20px;
            border-radius: 8px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        input[type="text"], input[type="password"] {
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            width: calc(100% - 22px); /* Full width minus padding */
        }
        button {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 20px; /* 为登录按钮设置 margin-top */
            margin-right: 30px ;
        }
        #zhuce {
            margin-top: 20px; /* 为注册按钮设置2cm的 margin-top */
        }
        button:hover {
            background-color: #0056b3;
        }
        #msg {
            display: block;
            margin-top: 10px;
            font-size: 12px;
            color: red;
        }
    </style>
</head>
<body class="bg">
<div class="header">
    <h1>个人博客</h1>
</div>
<div class="login-container">
    <form action="login" method="post" id="loginForm">
        <input type="text" name="uname" id="uname" placeholder="姓名" value="${messageModel.object.username}">
        <input type="password" name="upwd" id="upwd" placeholder="密码" value="${messageModel.object.password}">
        <button type="button" id="loginBtn">登录</button>
        <button type="button" id="zhuce">注册</button> <!-- 为注册按钮设置了 id"qqq" 以应用特定的样式 -->
        <span id="msg">${messageModel.msg}</span>
    </form>
</div>
<script type="text/javascript" src="JS/jquery.js"></script>
<script type="text/javascript">
    $("#loginBtn").click(function () {
        var uname = $("#uname").val();
        var upwd = $("#upwd").val();
        if (isEmpty(uname)) {
            $("#msg").html("用户名不可为空！");
            return;
        }
        if (isEmpty(upwd)) {
            $("#msg").html("密码不可为空！");
            return;
        }

        $("#loginForm").submit();
    });

    function isEmpty(str) {
        return str == null || str.trim() == "";
    }
</script>
</body>
</html>
