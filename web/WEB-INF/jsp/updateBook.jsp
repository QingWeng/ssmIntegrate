<%--
  Created by IntelliJ IDEA.
  User: 阿青呀
  Date: 2022/3/20
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改数据</title>
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
                    <small> 修改书籍</small>
                </h1>

            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/updateBook" method="post" >

        <!--出现的问题
                1、 我们提交SQL但是SQL执行了没有成功
                2、我们看到没有传入bookID,SQL一直不能执行成功
            前端传递隐藏域
        -->
        <input type="hidden" name="bookID" value="${qBooks.bookID}">

        <div class="form-group">
            <label >书籍名称</label>
            <input type="text"  name="bookName"   class="form-control"  value="${qBooks.bookName}"  required>
        </div>
        <div class="form-group">
            <label >书籍数量</label>
            <input type="text"  name="bookCounts" class="form-control" value="${qBooks.bookCounts}" required>
        </div>
        <div class="form-group">
            <label >书籍描述</label>
            <input type="text"  name="detail" class="form-control" value="${qBooks.detail}"  required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="修改">
        </div>
    </form>
</div>


</body>
</html>
