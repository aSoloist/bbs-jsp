<%--suppress ThisExpressionReferencesGlobalObjectJS --%>
<%--
  Created by IntelliJ IDEA.
  User: LiWenfeng
  Date: 2017/12/25 0025
  Time: 0:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="../css/pure-min.css">

    <!--[if lte IE 8]>
    <link rel="stylesheet" href="../css/layouts/side-menu-old-ie.css">
    <![endif]-->
    <!--[if gt IE 8]><!-->
    <link rel="stylesheet" href="../css/layouts/side-menu.css">
    <!--<![endif]-->

</head>
<body>

<div id="layout">
    <!-- Menu toggle -->
    <a href="#menu" id="menuLink" class="menu-link">
        <!-- Hamburger icon -->
        <span></span>
    </a>

    <div id="menu">
        <div class="pure-menu">
            <a class="pure-menu-heading" href="#">论坛管理系统</a>

            <ul class="pure-menu-list">
                <li class="pure-menu-item menu-item-divided pure-menu-selected">
                    <a href="#" class="pure-menu-link">主页</a>
                </li>
                <li class="pure-menu-item">
                    <a href="#" class="pure-menu-link">所有用户</a>
                </li>
                <li class="pure-menu-item">
                    <a href="#" class="pure-menu-link">所有帖子</a>
                </li>
                <li class="pure-menu-item">
                    <a href="#" class="pure-menu-link">退出</a>
                </li>
            </ul>
        </div>
    </div>

    <div id="main">
        <div class="header">
            <h1>论坛管理系统</h1>
        </div>

        <div class="content">
            <h2 class="content-subhead">小标题</h2>
            <p>内容
            </p>

        </div>
    </div>
</div>

<script src="../js/ui.js"></script>

</body>
</html>
