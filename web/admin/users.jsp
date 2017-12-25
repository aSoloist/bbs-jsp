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
                <li class="pure-menu-item menu-item-divided pure-menu-selected">
                    <a href="users.jsp" class="pure-menu-link">所有用户</a>
                </li>
                <li class="pure-menu-item">
                    <a href="stickers.jsp" class="pure-menu-link">所有帖子</a>
                </li>
                <li class="pure-menu-item">
                    <a href="/exit" class="pure-menu-link">退出</a>
                </li>
            </ul>
        </div>
    </div>

    <div id="main">
        <div class="header">
            <h1>论坛管理系统</h1>
        </div>

        <div class="content">
            <h2 class="content-subhead">所有用户</h2>

            <table class="pure-table pure-table-horizontal">
                <thead>
                <tr>
                    <th>用户名</th>
                    <th>密码</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <tr class="pure-table-odd">
                    <td>测试文本</td>
                    <td>测试文本测试文本测试文本</td>
                    <td><a href="#">编辑</a>&nbsp;<a href="#">删除</a></td>
                </tr>

                <tr>
                    <td>测试文本测试文本</td>
                    <td>测试文本测试文本测试文本测试文本</td>
                    <td><a href="#">编辑</a>&nbsp;<a href="#">删除</a></td>
                </tr>

                <tr class="pure-table-odd">
                    <td>测试文本</td>
                    <td>测试文本测试文本测试文本</td>
                    <td><a href="#">编辑</a>&nbsp;<a href="#">删除</a></td>
                </tr>

                <tr>
                    <td>测试文本测试文本</td>
                    <td>测试文本测试文本测试文本测试文本</td>
                    <td><a href="#">编辑</a>&nbsp;<a href="#">删除</a></td>
                </tr>

                <tr class="pure-table-odd">
                    <td>测试文本</td>
                    <td>测试文本测试文本测试文本</td>
                    <td><a href="#">编辑</a>&nbsp;<a href="#">删除</a></td>
                </tr>

                <tr>
                    <td>测试文本测试文本</td>
                    <td>测试文本测试文本测试文本测试文本</td>
                    <td><a href="#">编辑</a>&nbsp;<a href="#">删除</a></td>
                </tr>

                <tr class="pure-table-odd">
                    <td>测试文本</td>
                    <td>测试文本测试文本测试文本</td>
                    <td><a href="#">编辑</a>&nbsp;<a href="#">删除</a></td>
                </tr>

                <tr>
                    <td>测试文本测试文本</td>
                    <td>测试文本测试文本测试文本测试文本</td>
                    <td><a href="#">编辑</a>&nbsp;<a href="#">删除</a></td>
                </tr>

                <tr class="pure-table-odd">
                    <td>测试文本</td>
                    <td>测试文本测试文本测试文本</td>
                    <td><a href="#">编辑</a>&nbsp;<a href="#">删除</a></td>
                </tr>

                <tr>
                    <td>测试文本测试文本</td>
                    <td>测试文本测试文本测试文本测试文本</td>
                    <td><a href="#">编辑</a>&nbsp;<a href="#">删除</a></td>
                </tr>

                <tr class="pure-table-odd">
                    <td>测试文本</td>
                    <td>测试文本测试文本测试文本</td>
                    <td><a href="#">编辑</a>&nbsp;<a href="#">删除</a></td>
                </tr>

                <tr>
                    <td>测试文本测试文本</td>
                    <td>测试文本测试文本测试文本测试文本</td>
                    <td><a href="#">编辑</a>&nbsp;<a href="#">删除</a></td>
                </tr>

                <tr class="pure-table-odd">
                    <td>测试文本</td>
                    <td>测试文本测试文本测试文本</td>
                    <td><a href="#">编辑</a>&nbsp;<a href="#">删除</a></td>
                </tr>

                <tr>
                    <td>测试文本测试文本</td>
                    <td>测试文本测试文本测试文本测试文本</td>
                    <td><a href="#">编辑</a>&nbsp;<a href="#">删除</a></td>
                </tr>
                </tbody>
            </table>

            <div class="paging">
                <span class="disabled"> &lt; </span>
                <span class="current">1</span>
                <a href="#?page=2">2</a>
                <a href="#?page=3">3</a>
                <a href="#?page=4">4</a>
                <a href="#?page=5">5</a>
                <a href="#?page=6">6</a>
                <a href="#?page=7">7</a>
                ...
                <a href="#?page=199">199</a>
                <a href="#?page=200">200</a>
                <a href="#?page=2"> &gt; </a>
            </div>

        </div>
    </div>
</div>

<script src="../js/ui.js"></script>

</body>
</html>
