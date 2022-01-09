<%--
  Created by IntelliJ IDEA.
  User: SH
  Date: 2022-01-04
  Time: 오전 12:26
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/board.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="/js/board.js"></script>
    <title>Notice</title>
</head>
<body>
<div class="wrap board">
    <c:import url="../header.jsp"/>
    <main>
        <section>
         <h2>공지사항</h2>
            <c:forEach var="i" items="${noticeList}">
            <article>
                <a href="notice/${i.code}">
                <h3><c:out value="${i.title}"/> </h3>
                <div class="counts">
                   <p><c:out value="${i.regdate}"/></p>
                   <p> <span class="likes"><span class="heart">♥</span><c:out value="${i.likes}"/> </span> <span class="viewCount"><img class="eye" src="https://www.freeiconspng.com/uploads/eyeball-icon-png-eye-icon-1.png"></img><c:out value="${i.viewcount}"/> </span> </p>
                </div>
                </a>
            </article>
            </c:forEach>
        </section>
        <section class="btnPart">
        <%--admin일때만--%>
            <c:choose>
                <c:when test="${sessionScope.log=='admin'}">
                <a href="/noticeWrite" class="button toWrite">글쓰기</a>
                </c:when>
            </c:choose>

        </section>
    </main>
    <c:import url="../footer.jsp"/>
</div>
</body>
</html>
