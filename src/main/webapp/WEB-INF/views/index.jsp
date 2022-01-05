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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
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
                        <li><a href="">#가족과함께</a></li>
                        <li><a href="">#연인과함께</a></li>
                        <li><a href="">#당일치기</a></li>
                        <li><a href="">#축제</a></li>
                        <li><a href="">#역사여행</a></li>
                        <li><a href="">#로맨틱야경</a></li>
                        <li><a href="">#데이트코스</a></li>
                        <li><a href="">#휴식</a></li>
                        <li><a href="">#자연여행</a></li>
                        <li><a href="">#역사여행</a></li>
                        <li><a href="">#유네스코</a></li>
                        <li><a href="">#제주여행</a></li>
                    </ul>

                </div>
            </article>
        </section>
        <section class="infos">
            <div>
            <article class="notice">
                <div class="title"> <h3>공지사항</h3> <p><a href="/notices">+</a></p></div>

                <table>
                    <tr><td>글제목...</td><td>날짜</td></tr>
                    <tr><td>글제목...</td><td>날짜</td></tr>
                    <tr><td>글제목...</td><td>날짜</td></tr>
                    <tr><td>글제목...</td><td>날짜</td></tr>
                    <tr><td>글제목...</td><td>날짜</td></tr>
                </table>
            </article>
            <article class="festival">
                <div class="title"> <h3>축제정보</h3> <p><a href="/festival">+</a></p></div>
            </article>
            </div>
        </section>
    </main>

    <c:import url="footer.jsp"/>
</div>


<script>

    let arr=[];
    $.ajax({
        url:"http://api.kcisa.kr/openapi/service/rest/meta/KOLfest?serviceKey=457527fa-9844-48ec-a918-51c8fdb31866&numOfRows=5&pageNo=1",
        type:"get",
        dataType:"json",
        data:{
            numOfRows:5,
            pageNo:1
        },
        contentType:"application/json"
    }).done(body =>{

    console.log(body)


    });


</script>

</body>
</html>