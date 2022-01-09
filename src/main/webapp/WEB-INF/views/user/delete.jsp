<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon">
    <link type="text/css" rel="stylesheet" href="css/delete.css">
    <title>Document</title>
</head>
<body>
<c:import url="../header.jsp"/>
<form>
    <div class="wrap">
        <main>
            <h1>회원탈퇴</h1>
            <h3>아이디</h3>
            <div class="divId">
                <input type="text" name="id" class="inputId">
            </div>
            <h3>비밀번호</h3>
            <div class="divPw">
                <input type="password" name="pw" class="inputPw"><br>
            </div>
            <input type="button" onclick="deleteCheck(form)" value="회원탈퇴" class="buttonDelete">
            <input type="button" onclick="backPage()"  value="뒤로가기" class="buttonBack">
        </main>
        <aside1></aside1>
        <aside2></aside2>
    </div>
</form>
<c:import url="../footer.jsp"/>
    <script type="text/javascript" src="js/delete.js"></script>
</body>
</html>