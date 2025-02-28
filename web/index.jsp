<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人主页</title>
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: 'Arial', sans-serif;
        }

        .bg {
            background-image: url('./pic/bg2.jpg'); /* 替换为你的图片路径 */
            height: 100%;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        .content {
            text-align: center;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: white;
        }
    </style>
</head>
<body class="bg">
<div class="content">
    <h1>${user.username}，你好！</h1>
</div>
</body>
</html>
