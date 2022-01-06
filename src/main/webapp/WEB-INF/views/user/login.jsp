<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

    <script type="text/javascript" src="js/login.js"></script>
    <title>Document</title>
</head>
<body>
    여기는 login 페이지

    <form>
        id : <input type="text" name="id"><br>
        pw : <input type="password" name="pw"><br>
        <input type="button" onclick="checkId(form)" value="로그인">
        <input type="button" onclick="location.href='/'"  value="뒤로가기">
    </form>

</body>
</html>