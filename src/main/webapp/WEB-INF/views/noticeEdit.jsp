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
    <title>NoticeEdit</title>
</head>
<body>
<div class="wrap board">
    <c:import url="header.jsp"/>
    <main>
        <section>
            <h2>공지사항 - 수정</h2>
            <table>
                <tbody>
                <tr>
                    <td>
                       <h3><input type="text" value="${title}"></h3>
                    </td>
                </tr>
                <tr> <td>${regdate}</td></tr>
                <tr> <td><textarea name="" id="" cols="30" rows="10">${content}</textarea> </td></tr>
                <tr> <td>${likes}</td></tr>
                <tr> <td>${viewcount}</td></tr>
                </tbody>
            </table>
        </section>
        <section>
            <button>수정완료</button>
            <a href="/notices">취소</a>
        </section>
    </main>
    <c:import url="footer.jsp"/>
</div>
</body>
</html>
