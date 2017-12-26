<%@ page import="java.util.List" %>
<%@ page import="com.bbs.bean.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="../css/pure-min.css">
    <link rel="stylesheet" href="../css/paging.css">
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
    List users = (List) session.getAttribute("users");
    String s = request.getParameter("page");
    int pages = 1;
    if (s != null) {
        pages = Integer.parseInt(s);
    }
    int row = 15;
    int totalPage = users.size() % row == 0 ? users.size() / row : users.size() / row + 1;
    int startIndex = pages * row - row;
    if (pages == totalPage || totalPage == 0) {
        row = users.size() - (pages - 1) * row;
    }
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
            <h2 class="content-subhead">所有用户</h2>

            <div style="text-align: right">
                <a href="user.jsp">添加用户>></a>
            </div>

            <table class="pure-table pure-table-horizontal">
                <thead>
                <tr>
                    <th>用户名</th>
                    <th>密码</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <%
                    for (int i = startIndex; i < row; i++) {
                        User user = (User) users.get(i);
                        if (i % 2 != 0) {
                            out.print("<tr class=\"pure-table-odd\">");
                        } else {
                            out.print("<tr>");
                        }
                %>
                    <td><%=user.getUsername()%></td>
                    <td><%=user.getPassword()%></td>
                    <td><a href="${pageContext.request.contextPath}/admin/delete?id=<%=user.getId()%>" onclick="return confirm('确认删除？');">删除</a></td>
                </tr>
                <%
                    }
                %>
                </tbody>
            </table>

            <div class="paging">
                <%
                    if (pages == 1) {
                        out.print("<span class=\"disabled\"> &lt; </span>");
                    } else {
                        out.print("<a href=\"stickers.jsp?page=" + (pages - 1) + "\"> &lt; </a>");
                    }

                    for (int i = 1; i <= totalPage; i++) {
                        if (pages == i) {
                            out.print("<span class=\"current\">" + i + "</span>");
                        } else {
                            out.print("<a href=\"stickers.jsp?page=" + i + "\">" + i + "</a>");
                        }
                    }

                    if (pages == totalPage || totalPage == 0) {
                        out.print("<span class=\"disabled\"> &gt; </span>");
                    } else {
                        out.print("<a href=\"stickers.jsp?page=" + (pages + 1) + "\"> &gt; </a>");
                    }
                %>
            </div>

        </div>
    </div>
</div>

<script src="../js/ui.js"></script>

</body>
</html>
