<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 阿青呀
  Date: 2022/3/20
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>addbook</title>
    <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>

    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>



</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small> 新增书籍</small>
                </h1>

            </div>
        </div>
    </div>


    <form action="${pageContext.request.contextPath}/book/addBook" method="post" >



        <div class="form-group">
            <label >书籍名称</label>
            <input type="text"  name="bookName"   class="form-control"  required>
        </div>
        <div class="form-group">
            <label >书籍数量</label>
            <input type="text"    name="bookCounts" class="form-control" required>
        </div>
        <div class="form-group">
            <label >书籍描述</label>
            <input type="text"     name="detail" class="form-control"  required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="添加">
        </div>
    </form>
    </div>


 </body>
</html>
