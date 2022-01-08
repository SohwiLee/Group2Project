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
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/search.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type='text/javascript' src='https://code.jquery.com/jquery-3.5.1.min.js'></script>
    <script type='text/javascript' src="/js/festival.js"></script>
    <style>
        .contents{padding-top:20px;}
    </style>
    <title>FestivalInfo</title>
</head>
<body>
<div class="wrap festival">
    <c:import url="../header.jsp"/>
    <main>
        <section class="results">
            <h2>지역축제정보</h2>
            <div class="init">
                검색할 지역을 선택해주세요
            </div>
        </section>
        <section class="category">
            <article class="local">
                <form action="">
                    <input type="radio" name="province" value="전체" id="all"checked>
                    <label for="all">#전체</label>
                    <input type="radio" name="province" value="서울특별시" id="01">
                    <label for="01">#서울 </label>
                    <input type="radio" name="province" value="부산광역시" id="02">
                    <label for="02">#부산 </label>
                    <input type="radio" name="province" value="대구광역시" id="03">
                    <label for="03">#대구</label>
                    <input type="radio" name="province" value="인천광역시" id="04">
                    <label for="04">#인천</label>
                    <input type="radio" name="province" value="광주광역시" id="05">
                    <label for="05">#광주</label>
                    <input type="radio" name="province" value="대전" id="06">
                    <label for="06">#대전</label>
                    <input type="radio" name="province" value="울산" id="07">
                    <label for="07">#울산</label>
                    <input type="radio" name="province" value="세종시" id="08">
                    <label for="08">#세종</label>
                    <input type="radio" name="province" value="경기도" id="09">
                    <label for="09">#경기</label>
                    <input type="radio" name="province" value="강원도" id="10">
                    <label for="10">#강원</label>
                    <input type="radio" name="province" value="충청북도" id="11">
                    <label for="11">#충북</label>
                    <input type="radio" name="province" value="충청남도" id="12">
                    <label for="12">#충남</label>
                    <input type="radio" name="province" value="전라북도" id="13">
                    <label for="13">#전북</label>
                    <input type="radio" name="province" value="전라남도" id="14">
                    <label for="14">#전남</label>
                    <input type="radio" name="province" value="경상북도" id="15">
                    <label for="15">#경북</label>
                    <input type="radio" name="province" value="경상남도" id="16">
                    <label for="16">#경남</label>
                    <input type="radio" name="province" value="제주특별자치도" id="17">
                    <label for="17">#제주</label>
                    <input type="radio" name="province" value="온라인" id="18">
                    <label for="18">#온라인 개최</label>
                </form>
            </article>
<%--            <article class="input">--%>
<%--                <input type="text" name="inputWord" placeholder="검색어 입력">--%>
<%--            </article>--%>
            <button onclick="searchF()" class="button">검색</button>

        </section>

    </main>
    <c:import url="../footer.jsp"/>
</div>
</body>
</html>
