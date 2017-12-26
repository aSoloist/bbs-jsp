<%@ page import="com.bbs.bean.Sticker" %>
<%@ page import="java.util.List" %><%--suppress ThisExpressionReferencesGlobalObjectJS --%>
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
<%
    List stickers = (List) session.getAttribute("stickers");
%>
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
                    <a href="index.jsp" class="pure-menu-link">主页</a>
                </li>
                <li class="pure-menu-item">
                    <a href="users.jsp" class="pure-menu-link">所有用户</a>
                </li>
                <li class="pure-menu-item">
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
            <h2 class="content-subhead">近期帖子</h2>
            <div><a href="stickers.jsp">查看全部>></a></div>

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
            <%
                int row = stickers.size() < 8 ? stickers.size() : 8;
                for (int i = 0; i < row; i++) {
                    Sticker sticker = (Sticker) stickers.get(i);
                    if (i % 2 != 0) {
                        out.print("<tr class=\"pure-table-odd\">");
                    } else {
                        out.print("<tr>");
                    }
            %>
                    <td><%=sticker.getId()%></td>
                    <td><a href="#"><%=sticker.getTitle()%></a></td>
                    <td><%=sticker.getContent()%></td>
                    <td><%=sticker.getCreate()%></td>
                </tr>
            <%
                }
            %>
                </tbody>
            </table>

        </div>
    </div>
</div>

<script src="../js/ui.js"></script>

</body>
</html>
