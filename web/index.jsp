<%--
  Created by IntelliJ IDEA.
  User: 阿青呀
  Date: 2022/3/18
  Time: 21:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
      <style>
        a{
            text-decoration: none;
            color: black;
            font-size: 30px;

        }
        h3{
          weith:180px;
          height: 38px;
          margin: 100px auto;
          text-align: center;
          line-height: 38px;
          outline-width: 100px;
          background: aquamarine;
          border-radius: 5px;
        }
      </style>

  </head>
  <body>
  <h3>
    <a href="${pageContext.request.contextPath}/book/queryBook"> 进入书籍页面</a>

  </h3>
  </body>
</html>
