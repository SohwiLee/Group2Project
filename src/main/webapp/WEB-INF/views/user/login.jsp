<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link type="text/css" rel="stylesheet" href="css/common.css">
    <link type="text/css" rel="stylesheet" href="css/login.css">
    <script type="text/javascript" src="js/login.js"></script>
    <title>Document</title>
</head>
<body>
<c:import url="../header.jsp"/>
        <div class="wrap">
            <main>
            <form>
                <h1>로그인</h1>
                <h3>아이디</h3>
                <div class="divId">
                    <input type="text" name="id" class="inputId">
                </div>
                <h3>비밀번호</h3>
                <div class="divPw">
                    <input type="password" name="pw" class="inputPw"><br>
                </div>
                <input type="button" onclick="checkId(form)" value="로그인" class="buttonLogin">
                <input type="button" onclick="backPage()"  value="뒤로가기" class="buttonBack">
            </form>
            </main>
            <aside1></aside1>
            <aside2></aside2>
        </div>
<c:import url="../footer.jsp"/>
</body>
</html>