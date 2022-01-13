<%--
  Created by IntelliJ IDEA.
  User: SH
  Date: 2022-01-05
  Time: 오전 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/search.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type='text/javascript' src='https://code.jquery.com/jquery-3.5.1.min.js'></script>
    <script type='text/javascript' src="/js/festivalViews.js"></script>
    <title>FestivalView</title>
</head>
<% String code = String.valueOf(request.getAttribute("code"));%>
<body onload="showPage(<%=code%>);">
<div class="wrap festival view">
    <c:import url="../header.jsp"/>
    <main>
        <section>
            <h2></h2>
            <table class="detailTable">
                <tr><td colspan="2" class="img1"><img ></td></tr>
<%--                <tr><td colspan="2" class="img2"><img ></td></tr>--%>
                <tr><td>장소</td><td class="addr"> : </td></tr>
                <tr><td>문의사항</td><td class="tel"> : </td></tr>
                <tr><td>행사시작</td><td class="start"> : </td></tr>
                <tr><td>행사종료</td><td class="end"> : </td></tr>
            </table>
        </section>
        <section class="btnPart">
            <button onclick="history.back()">뒤로가기</button>
        </section>
    </main>
    <c:import url="../footer.jsp"/>
</div>
</body>
</html>
