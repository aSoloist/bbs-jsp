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
    <!--[if lt IE 9]>
    <script src="../js/html5shiv.js"></script>
    <![endif]-->

    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                };
            i[r].l = 1 * new Date();
            a = s.createElement(o);
            m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-41480445-1', 'purecss.io');
        ga('send', 'pageview');
    </script>

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
                <li class="pure-menu-item">
                    <a href="index.jsp" class="pure-menu-link">主页</a>
                </li>
                <li class="pure-menu-item">
                    <a href="users.jsp" class="pure-menu-link">所有用户</a>
                </li>
                <li class="pure-menu-item menu-item-divided pure-menu-selected">
                    <a href="stickers.jsp" class="pure-menu-link">所有帖子</a>
                </li>
                <li class="pure-menu-item">
                    <a href="${pageContext.request.contextPath}/exit" class="pure-menu-link">退出</a>
                </li>
            </ul>
        </div>
    </div>

    <div id="main">
        <div class="header">
            <h1>论坛管理系统</h1>
        </div>

        <div class="content">
            <h2 class="content-subhead">添加帖子</h2>

            <form class="pure-form pure-form-stacked" action="${pageContext.request.contextPath}/admin/addSticker" method="post">
                <fieldset>

                    <div class="pure-g">
                        <div class="pure-u-1 pure-u-md-1-3">
                            <label for="title">标题</label>
                            <input id="title" class="pure-u-23-24" type="text" name="title">
                        </div>

                        <div class="pure-u-1 pure-u-md-1-3">
                            <label for="content">内容</label>
                            <textarea id="content" class="pure-u-23-24" rows="15" name="content"></textarea>
                        </div>
                    </div>
                    <br>

                    <div align="center">
                        <button type="submit" class="pure-button pure-button-primary">确定</button>
                    </div>
                </fieldset>
            </form>

        </div>
    </div>
</div>

<script src="../js/ui.js"></script>

</body>
</html>
