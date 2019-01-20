<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cjswo
  Date: 2019-01-18
  Time: 오후 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>글쓰기 페이지</title>
    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/">게시판</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="/board/main">목록<span class="sr-only">(current)</span></a></li>
                    <li><a href="/board/write">글쓰기</a></li>
                    <c:if test="${sessionScope.userInfo == null}">
                        <li><a href="/board/register">회원가입</a></li>
                    </c:if>
                </ul>
                <form class="navbar-form navbar-left" role="search"  method="post" action="/board/main">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>
                <c:if test="${sessionScope.userInfo != null}">
                    <ul class="nav navbar-right">
                        <li>${sessionScope.userInfo.nickname}님 환영합니다.</li>
                    </ul>
                </c:if>

            </div>
        </div><!-- /.container-fluid -->
    </nav>
    <div class="page-header">
        <div class="col-md-12 col-md-offset-3">
            <h3>글상세</h3>
        </div>
    </div>
    <div class="form-group">
        <label>Title : ${board.title}</label>
    </div>
    <div class="form-group">
        <label>NickName : ${board.nickname}</label>
    </div>

    <div class="form-group">
        <label>NickName : ${board.nickname}</label>
    </div>
    <div class="form-group">
        <label for="content">Comment:</label>
        <textarea class="form-control" rows="10" name="content" id="content" readonly="readonly">${board.content}</textarea>
    </div>

    <a class="btn btn-default pull-left" href="/board/detail?id=${before}">이전글</a>
    <a class="btn btn-default pull-left" href="/board/detail?id=${pre}">이후글</a>

    <a class="btn btn-default pull-right" href="/board/main">목록</a>
    <a class="btn btn-default pull-right" href="/board/update?id=${board.id}">수정</a>
    <a class="btn btn-default pull-right" href="/board/delete?id=${board.id}">삭제</a>
    <a class="btn btn-default pull-right" href="/board/rewrite?id=${board.id}">답글</a>

</div>
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script type="text/javascript" src="http:code.jquery.com/jquery-1.8.3.min.js"></script>
</body>
</html>