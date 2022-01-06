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
    <title>NoticeView</title>
</head>
<body>
<div class="wrap board">
    <c:import url="../header.jsp"/>
    <main>
        <section>
            <h2>이벤트</h2>
            <table>
                <tbody>
                <tr>
                    <td>
                       <h3> ${title}</h3>
                    </td>
                </tr>
                <tr> <td>${regdate}</td></tr>
                <tr> <td>${content}</td></tr>
                <tr> <td>${likes}</td></tr>
                <tr> <td>${viewcount}</td></tr>
                </tbody>
            </table>
        </section>
        <section>
            <%-- admin일 때만 보이기--%>
                <a href="/event/${code}/edit">수정</a>
                <a href="/events">목록으로</a>
        </section>
    </main>
    <c:import url="../footer.jsp"/>
</div>
</body>
</html>
