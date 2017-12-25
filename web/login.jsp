<%--
  Created by IntelliJ IDEA.
  User: LiWenfeng
  Date: 2017/12/25 0025
  Time: 0:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="css/pure-min.css">

    <!--[if lte IE 8]>
    <link rel="stylesheet" href="css/layouts/grids-responsive-old-ie-min.css">
    <![endif]-->
    <!--[if gt IE 8]><!-->
    <link rel="stylesheet" href="css/layouts/grids-responsive-min.css">
    <!--<![endif]-->

</head>
<body>

<div class="pure-g">
    <div class="pure-u-1 pure-u-md-1-3"></div>
    <div class="pure-u-1 pure-u-md-1-3">
            <div class="header" align="center">
                <h1>论坛管理系统</h1>
            </div>
        <form class="pure-form pure-form-aligned" action="login">
            <fieldset>
                <div class="pure-control-group" align="center">
                    <label for="username">用户名</label>
                    <input id="username" type="text" placeholder="Username">
                </div>

                <div class="pure-control-group" align="center">
                    <label for="password">密码</label>
                    <input id="password" type="password" placeholder="Password">
                </div>
                <br>

                <div class="pure-controls-group" align="center">
                    <button type="submit" class="pure-button pure-button-primary">登录</button>
                </div>

            </fieldset>
        </form>
    </div>
    <div class="pure-u-1 pure-u-md-1-3"></div>
</div>

</body>
</html>
