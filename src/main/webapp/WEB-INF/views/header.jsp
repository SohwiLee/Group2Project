<%--
  Created by IntelliJ IDEA.
  User: SH
  Date: 2022-01-01
  Time: 오전 3:06
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/css/common.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="/js/common.js"></script>
    <!-- tree /f 프로젝트명 ( 프로젝트 경로에서)-->
    <script type="text/javascript" src="/js/index.js"></script>
    <title>header</title>
</head>
<body>
<header>

    <ul class="users">
        <form method="get" action="login">
            <input type="hidden" id="hidden">
            <span class="loginId"><c:out value="${sessionScope.log}"/></span>
            <c:choose>
                <c:when test="${empty sessionScope.log}">
                    <input type="button" onclick="submit()" value="로그인" id="login"><br>
                    <c:url var="path" value="joinAgree"/>
                    <input type="button" onclick="location.href='${path}'" value="회원가입" id="join"><br>

                </c:when>
                <c:otherwise>
                    <c:url var="logout" value="logout"/>
<%--                    <c:url var="delete" value="delete"/>--%>

                    <input type="button" onclick="location.href='${logout}'" value="로그아웃" id="logout"><br>
<%--                    <input type="button" onclick="location.href='${delete}'" value="회원탈퇴" id="delete"><br>--%>


                </c:otherwise>
            </c:choose>
        </form>
    </ul>
    <h1><a href="/">TourGuide</a></h1>
    <button class="open navBtn" onclick="btnOpen()">메뉴</button>
    <nav class="">
        <button class="close navBtn" onclick="btnClose()">닫기</button>
        <ul><li>
        <c:choose>
            <c:when test="${empty sessionScope.log}">
            <a href="/login">로그인</a>
            </c:when>
            <c:otherwise>
<%--                <c:url var="update" value="update"/>--%>
<%--            <input type="button" onclick="location.href='${update}'" value="정보수정" id="update"><br>--%>
                <c:url var="mypage" value="mypage"/>
            <input type="button" onclick="location.href='${mypage}'" value="마이페이지" id="mypage"><br>
            </c:otherwise>
        </c:choose>
        </li></ul>
        <ul><li><a href="/searchKey">가볼만한곳</a></li></ul>
        <ul><li><a href="/festival">지역축제정보</a></li></ul>
        <ul><li><a href="/events">이벤트</a></li></ul>
        <ul><li><a href="/notices">공지사항</a></li></ul>
    </nav>
</header>
</body>
</html>
