<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 阿青呀
  Date: 2022/3/18
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询书籍</title>
    <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>

    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>  书籍列表 -------显示书籍</small>
                </h1>

            </div>
        </div>
    </div>

    <div class="row"> <div class="row">
        <div class="col-md-4 column">
<%--            addBook--%>
            <a  class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook"> 新增书籍 </a>
            <a  class="btn btn-primary" href="${pageContext.request.contextPath}/book/queryBook"> 显示全部书籍 </a>
            <a  class="btn btn-primary" href="${pageContext.request.contextPath}/"> 返回首页 </a>

    </div>

        <div classs="col-md-4 column" >
        <div class="col-md-8 column">
            <%--     查询书籍--%>
                <span style="color: red; font-weight: bold">${error}</span>
            <form action="${pageContext.request.contextPath}/book/qbn" method="post" style="float: right" >
                <input type="text"  name="queryBookName" class="form-control"   placeholder="请输入要查询的书籍名称" onkeyup = "this.value=this.value.replace(/^ +| +$/g,'')"  required>
                <input type="submit" value="查询" class="btn btn-primary">
            </form>
        </div>
    </div>
    </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 colum">
            <table class="table table-hover table-striped">
                <thead>
                    <th>书籍编号</th>
                    <th>书籍名称</th>
                    <th>书籍数量</th>
                    <th>书籍详情</th>
                    <th>操作</th>
                </thead>
                <tbody>
<%--                书籍从数据库中查询出来，从这个List中遍历出来，foreach  --%>
                    <c:forEach var="books" items="${books}">
                       <tr>
                            <td>${books.bookID}</td>
                            <td>${books.bookName}</td>
                           <td>${books.bookCounts}</td>
                          <td>${books.detail}</td>
                           <td>

                               <a href="${pageContext.request.contextPath}/book/toUpdate/${books.bookID}">修改</a>
                                &nbsp | &nbsp
                               <a href="${pageContext.request.contextPath}/book/deleteBook/${books.bookID}">删除</a>
                           </td>
                  </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</div>


</body>
</html>
