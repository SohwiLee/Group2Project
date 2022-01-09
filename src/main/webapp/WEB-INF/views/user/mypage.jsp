<%--
  Created by IntelliJ IDEA.
  User: SH
  Date: 2022-01-07
  Time: 오후 9:15
  To change this template use File | Settings | File Templates.
--%>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <title>MyPage</title>
</head>
<body>
<div class="warp myPage">
    <c:import url="header.jsp"/>
    <main>
        <section>
            <h2>정보수정 / 회원탈퇴</h2>
        </section>
        <section>
            <h2>찜목록</h2>
        </section>
        <section>
            <h2>(내가쓴댓글?)</h2>
        </section>
    </main>
    <c:import url="footer.jsp"/>
</div>
</body>
</html>
