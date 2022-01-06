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
            <c:out value="${sessionScope.log}"/>
            <c:choose>
                <c:when test="${empty sessionScope.log}">
                    <input type="button" onclick="submit()" value="로그인" id="login"><br>
                    <c:url var="path" value="join"/>
                    <input type="button" onclick="location.href='${path}'" value="회원가입" id="join"><br>

                </c:when>
                <c:otherwise>
                    <c:url var="logout" value="logout"/>
                    <c:url var="delete" value="delete"/>
                    <c:url var="update" value="update"/>
                    <input type="button" onclick="location.href='${logout}'" value="로그아웃" id="logout"><br>
                    <input type="button" onclick="location.href='${delete}'" value="회원탈퇴" id="delete"><br>
                    <input type="button" onclick="location.href='${update}'" value="정보수정" id="update"><br>

                </c:otherwise>
            </c:choose>
        </form>
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
        <ul><li>
            <c:url var="joinAgree" value="joinAgree"/>
<%--            <input type="button" id="agree" onclick="location.href='${joinAgree}'" value="동의페이지">--%>
            <a id="agree" href='${joinAgree}'>동의페이지</a>
            <c:out value="${sessionScope.log}"></c:out>

        </li></ul>
    </nav>
</header>
</body>
</html>
