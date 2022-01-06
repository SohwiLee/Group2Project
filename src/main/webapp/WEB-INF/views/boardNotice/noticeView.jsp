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
    <script src="/js/board.js" type="text/javascript"></script>
    <title>NoticeView</title>
</head>
<body>
<div class="wrap board">
    <c:import url="../header.jsp"/>
    <main>
        <section>
            <h2>공지사항</h2>
            <table>
                <tbody>
                <tr>
                    <td class="viewTitle">
                       <h3> ${title}</h3>
                        <p> <span class="likes"><span class="heart">♥</span>${likes} </span> <span class="viewCount"><img class="eye" src="https://www.freeiconspng.com/uploads/eyeball-icon-png-eye-icon-1.png"></img>${viewcount} </span></p>
                    </td>
                </tr>
                <tr> <td>${regdate}</td></tr>
                <tr> <td class="content">${content}</td></tr>
                <tr><td> <a href="/Notice/cntlike/${code}" class="putLike" onclick="addLike()">♡</a></td></tr>
                </tbody>
            </table>
        </section>
        <section class="btnPart">
            <%-- admin일 때만 보이기--%>
            <a class="button edit" href="/notice/${code}/edit">수정</a>
            <a class="button next" href="/notice/${code+1}">다음</a>
            <a class="button prev" href="/notice/${code-1}">이전</a>
            <a class="button toList" href="/notices">목록으로</a>
        </section>

    </main>
    <c:import url="../footer.jsp"/>
</div>

</body>
</html>
