<%--
  Created by IntelliJ IDEA.
  User: SH
  Date: 2022-01-04
  Time: 오전 12:27
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
<%--    <script src="/js/board.js"></script>--%>
    <title>EventWrite</title>
</head>
<body>
<div class="wrap write board">
<c:import url="header.jsp"/>
    <form action="/addEvent">
    <main>
        <section>
            <h2>이벤트 - 작성</h2>
            <table>
                <tbody>
                <tr>
                    <td>제목</td>
                    <td>
                        <h3><input type="text" name="title" class="title">
                        </h3>
                    </td>
                </tr>

                <tr> <td>내용</td><td><textarea name="content" id="content" cols="30" rows="10"></textarea></td></tr>
                </tbody>
            </table>
        </section>
        <section>
        <input type="submit" value="작성">
        <a href="/events">취소</a>
        </section>
    </main>
    </form>

<c:import url="footer.jsp"/>
</div>
</body>
</html>
