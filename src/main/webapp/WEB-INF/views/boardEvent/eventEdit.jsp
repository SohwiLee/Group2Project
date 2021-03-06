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
    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/board.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <title>EventEdit</title>
</head>
<body>
<div class="wrap board write">
    <c:import url="../header.jsp"/>
    <main>
        <form action="/editEvent/${code}">
        <section>
            <h2>이벤트 - 수정</h2>
            <table>
                <tbody>
                <tr>
                    <td>제목</td>
                    <td><input type="text" name="title" value="${title}"></td>
                </tr>

                <tr> <td>내용</td><td><textarea name="content" id="content" cols="35" rows="30">${content}</textarea> </td></tr>
                </tbody>
            </table>
        </section>
        <section class="btnPart">
            <a href="/events"class="button">취소</a>
            <input type="submit" value="수정완료"class="button">
        </section>
        </form>
        <section class="btnPart del">
        <form action="/delEvent/${code}">
            <input type="submit" value="삭제"class="button">
        </form>
        </section>
    </main>
    <c:import url="../footer.jsp"/>
</div>
</body>
</html>
