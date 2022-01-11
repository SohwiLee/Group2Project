<%--
  Created by IntelliJ IDEA.
  User: SH
  Date: 2022-01-05
  Time: 오전 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="/css/search.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type='text/javascript' src='https://code.jquery.com/jquery-3.5.1.min.js'></script>
    <script type='text/javascript' src="/js/festival.js"></script>
    <style>
        .contents{padding-top:20px;}
    </style>
    <title>FestivalView</title>
</head>
<body>
<div class="wrap festival">
    <c:import url="../header.jsp"/>
    <main>
      <section>
          뷰페이지입니다.
      </section>

    </main>
    <c:import url="../footer.jsp"/>
</div>
</body>
</html>
