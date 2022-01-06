<%--
  Created by IntelliJ IDEA.
  User: SH
  Date: 2022-01-01
  Time: 오전 3:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="/js/common.js"></script>
    <title>header</title>
</head>
<body>
<header>

    <ul class="users">
       <li><a href="login">로그인</a></li>
       <li><a href="join">회원가입</a></li>
    </ul>
    <h1><a href="/">TourGuide</a></h1>
    <button class="open navBtn" onclick="btnOpen()">메뉴</button>
    <nav class="">
        <button class="close navBtn" onclick="btnClose()">닫기</button>
        <ul><li><a href="/login">로그인</a></li></ul>
        <ul><li><a href="/searchKey">검색</a></li></ul>
        <ul><li><a href="/festival">축제정보</a></li></ul>
        <ul><li><a href="/events">이벤트</a></li></ul>
        <ul><li><a href="/notices">공지사항</a></li></ul>
    </nav>
</header>
</body>
</html>
