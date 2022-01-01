<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page language="java" pageEncoding="utf-8" contentType="text/html; ISO-8859-1" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/index.css">
    <title>index</title>
</head>
<body>
<div class="wrap index">
    <c:import url="header.jsp"/>
    <main>
        <section class="banner">
            <div>
                <ul>
                    <li>
                        <a href=""><img src="/images/banner/banner1.jpg" alt="배너이미지1"></a>
                    </li>
                </ul>

            </div>
        </section>
        <section class="theme">
            <article>
                <div class="title"><h2>테마여행</h2> <p><a href="/search">더 자세히 검색하기</a></p></div>
                <div class="lists">
                    <ul>
                        <li><a href="">#가족여행</a></li>
                        <li><a href="">#당일치기</a></li>
                        <li><a href="">#축제</a></li>
                        <li><a href="">#역사여행</a></li>
                        <li><a href="">#로맨틱_야경</a></li>
                        <li><a href="">#데이트_코스</a></li>
                        <li><a href="">#휴식</a></li>
                        <li><a href="">#자연여행</a></li>
                        <li><a href="">#제주여행</a></li>
                    </ul>

                </div>
            </article>
        </section>
        <section class="infos"></section>
        <section class="recommend"></section>
    </main>

    <c:import url="footer.jsp"/>
</div>

</body>
</html>