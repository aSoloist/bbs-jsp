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
            <h2 class="content-subhead">所有帖子</h2>

            <form class="pure-form" style="text-align: right">
                <input type="text" class="pure-input" title="" placeholder="请输入帖子标题">
                <button type="submit" class="pure-button">搜索</button>
            </form>

            <table class="pure-table pure-table-horizontal">
                <thead>
                <tr>
                    <th>#</th>
                    <th>标题</th>
                    <th>内容</th>
                    <th>日期</th>
                </tr>
                </thead>

                <tbody>
                <tr class="pure-table-odd">
                    <td>1</td>
                    <td><a href="#">测试文本</a></td>
                    <td>测试文本测试文本测试文本</td>
                    <td>2009</td>
                </tr>

                <tr>
                    <td>2</td>
                    <td><a href="#">测试文本测试文本</a></td>
                    <td>测试文本测试文本测试文本测试文本</td>
                    <td>2012</td>
                </tr>

                <tr class="pure-table-odd">
                    <td>3</td>
                    <td><a href="#">测试文本测试文本</a></td>
                    <td>测试文本测试文本测试文本测试文本测试文本</td>
                    <td>2010</td>
                </tr>

                <tr>
                    <td>4</td>
                    <td><a href="#">测试文本测试文本</a></td>
                    <td>Foc测试文本测试文本测试文本us</td>
                    <td>2008</td>
                </tr>

                <tr class="pure-table-odd">
                    <td>5</td>
                    <td><a href="#">测试文本测试文本测试文本</a></td>
                    <td>测试文本测试文本测试文本测试文本测试文本</td>
                    <td>2011</td>
                </tr>

                <tr>
                    <td>6</td>
                    <td><a href="#">测试文本测试文本</a></td>
                    <td>M测试文本测试文本测试文本测试文本3</td>
                    <td>2009</td>
                </tr>

                <tr class="pure-table-odd">
                    <td>7</td>
                    <td><a href="#">测试文本测试文本测试文本</a></td>
                    <td>测试文本测试文本测试文本测试文本测试文本测试文本</td>
                    <td>2010</td>
                </tr>

                <tr>
                    <td>8</td>
                    <td><a href="#">测试文本</a></td>
                    <td>测试文本测试文本测试文本测试文本测试文本测试文本</td>
                    <td>2010</td>
                </tr>

                <tr class="pure-table-odd">
                    <td>9</td>
                    <td><a href="#">测试文本</a></td>
                    <td>测试文本测试文本测试文本</td>
                    <td>2009</td>
                </tr>

                <tr>
                    <td>10</td>
                    <td><a href="#">测试文本测试文本</a></td>
                    <td>测试文本测试文本测试文本测试文本</td>
                    <td>2012</td>
                </tr>

                <tr class="pure-table-odd">
                    <td>11</td>
                    <td><a href="#">测试文本测试文本</a></td>
                    <td>测试文本测试文本测试文本测试文本测试文本</td>
                    <td>2010</td>
                </tr>

                <tr>
                    <td>12</td>
                    <td><a href="#">测试文本测试文本</a></td>
                    <td>Foc测试文本测试文本测试文本us</td>
                    <td>2008</td>
                </tr>

                <tr class="pure-table-odd">
                    <td>13</td>
                    <td><a href="#">测试文本测试文本测试文本</a></td>
                    <td>测试文本测试文本测试文本测试文本测试文本</td>
                    <td>2011</td>
                </tr>

                <tr>
                    <td>14</td>
                    <td><a href="#">测试文本测试文本</a></td>
                    <td>M测试文本测试文本测试文本测试文本3</td>
                    <td>2009</td>
                </tr>

                <tr class="pure-table-odd">
                    <td>15</td>
                    <td><a href="#">测试文本测试文本测试文本</a></td>
                    <td>测试文本测试文本测试文本测试文本测试文本</td>
                    <td>2011</td>
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
