<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <title>Document</title>
</head>
<body>
        <h3>회원탈퇴 페이지</h3>
    <form action="delete">
        회원탈퇴할 아이디 : <input type="text" name="id"><br>
        회원탈퇴할 비밀번호 : <input type="password" name="pw"><br>
        <input type="button" onclick="deleteCheck(form)" value="확인">
        <input type="button" onclick="location.href='/'" value="취소">
    </form>
    <script type="text/javascript" src="js/delete.js"></script>
</body>
</html>