<%--suppress ThisExpressionReferencesGlobalObjectJS --%>
<%--
  Created by IntelliJ IDEA.
  User: LiWenfeng
  Date: 2017/12/25 0025
  Time: 0:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.bbs.servlet.*" %>
<html>
<head>
    <title>主页</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="../css/build/pure-min.css" crossorigin="anonymous">

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
    </script>

    <!--[if lte IE 8]>
    <link rel="stylesheet" href="../css/build/grids-responsive-old-ie-min.css">
    <![endif]-->
    <!--[if gt IE 8]><!-->
    <link rel="stylesheet" href="../css/build/grids-responsive-min.css">
    <!--<![endif]-->

</head>
<body>
<div class="custom-wrapper pure-g" id="menu">
    <div class="pure-u-1 pure-u-md-1-3">
        <div class="pure-menu">
            <ul class="pure-menu-list">
                <li class="pure-menu-item"><a href="index.jsp" class="pure-menu-link">论坛系统</a></li>
            </ul>
        </div>
    </div>
    <div class="pure-u-1 pure-u-md-1-3">
        <div class="pure-menu pure-menu-horizontal custom-can-transform">
            <ul class="pure-menu-list">
                <li class="pure-menu-item"><a href="index.jsp" class="pure-menu-link">主页</a></li>
                <li class="pure-menu-item"><a href="users.jsp" class="pure-menu-link">所有用户</a></li>
                <li class="pure-menu-item"><a href="stickers.jsp" class="pure-menu-link">所有帖子</a></li>
            </ul>
        </div>
    </div>
    <div class="pure-u-1 pure-u-md-1-3">
        <div class="pure-menu pure-menu-horizontal custom-menu-3 custom-can-transform">
            <ul class="pure-menu-list">
                <li class="pure-menu-item"><a href="exit" class="pure-menu-link">退出</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="main">

    <h1>这是主页</h1>

</div>

<script>
    (function (window, document) {
        var menu = document.getElementById('menu'),
            WINDOW_CHANGE_EVENT = ('onorientationchange' in window) ? 'orientationchange' : 'resize';

        function toggleHorizontal() {
            [].forEach.call(
                document.getElementById('menu').querySelectorAll('.custom-can-transform'),
                function (el) {
                    el.classList.toggle('pure-menu-horizontal');
                }
            );
        }

        function toggleMenu() {
            if (menu.classList.contains('open')) {
                setTimeout(toggleHorizontal, 500);
            }
            else {
                toggleHorizontal();
            }
            menu.classList.toggle('open');
            document.getElementById('toggle').classList.toggle('x');
        }

        function closeMenu() {
            if (menu.classList.contains('open')) {
                toggleMenu();
            }
        }

        document.getElementById('toggle').addEventListener('click', function (e) {
            toggleMenu();
            e.preventDefault();
        });

        window.addEventListener(WINDOW_CHANGE_EVENT, closeMenu);
    })(this, this.document);

</script>

</body>
</html>
