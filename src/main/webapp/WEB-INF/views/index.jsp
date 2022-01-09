<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page language="java" pageEncoding="utf-8" contentType="text/html; ISO-8859-1" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta property="og:title" content="Tour Guide">
    <meta property="og:description" content="전국 관광,축제 정보를 제공하는 가이드 사이트입니다.">
    <meta property="og:image" content="/images/ogImg.jpg">
    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/carousel.css">
    <link rel="stylesheet" href="/css/index.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="/js/common.js"></script>
    <script src="/js/index.js"></script>
    <script src="/js/carousel.js"></script>
    <title>index</title>
</head>
<body>
<div class="wrap index">
    <c:import url="header.jsp"/>

    <main>
        <section class="banner">
            <div class="carousel" id="carousel-banner">
                <div class="carousel-wrapper">
                    <div class="carousel-item"><img src="/images/banner/banner1.jpg" alt="배너이미지1"></div>
                    <div class="carousel-item"><img src="/images/banner/banner2.jpg" alt="배너이미지2"></div>
                    <div class="carousel-item"><img src="/images/banner/banner3.jpg" alt="배너이미지3"></div>
                    <div class="carousel-item"><img src="/images/banner/banner4.jpg" alt="배너이미지4"></div>
                </div>
                <div class="navi-wrapper"></div>
            </div>
        </section>

        <section class="theme">
            <article>
                <div class="title"><h2>테마여행</h2> <p><a href="/searchKey">지역과 함께 검색</a></p></div>
                <div class="lists">
                    <ul>
                        <li><a href="">#가족과함께</a></li>
                        <li><a href="">#가족여행</a></li>
                        <li><a href="">#관광지</a></li>
                        <li><a href="">#휴식</a></li>
                        <li><a href="">#연인과함께</a></li>
                        <li><a href="">#데이트코스</a></li>
                        <li><a href="">#로맨틱야경</a></li>
                        <li><a href="">#역사여행</a></li>
                        <li><a href="">#유네스코</a></li>
                        <li><a href="">#제주여행</a></li>
                        <li><a href="">#수도권</a></li>
                        <li><a href="">#이색체험</a></li>
                    </ul>

                </div>
            </article>
        </section>
        <section class="infos">
            <div>
            <article class="notice">
                <div class="title"> <h3>공지사항</h3> <p><a href="/notices">더보기</a></p></div>
                <table>
                    <c:forEach var="i" end="4" items="${noticeList}">
                        <tr><td>
                            <a href="notice/${i.code}">
                                <h3><c:out value="${i.title}"/> </h3>
                            </a>
                        </td></tr>
                    </c:forEach>
                </table>
            </article>
            <article class="festival">
                <div class="title"> <h3>지역축제정보</h3> <p><a href="/festival">더보기</a></p></div>
            </article>
            </div>
        </section>
    </main>

    <c:import url="footer.jsp"/>
</div>
<script>
    // 배너 동작
    new Carousel(document.querySelector('#carousel-banner'), {
        CarouselMotion : 'slide',
        naviPosition : 'bottom',
        naviStyle : 'arrow',
        autoMove : true,
        autoMoveTime : 4000
    });
</script>

</body>
</html>