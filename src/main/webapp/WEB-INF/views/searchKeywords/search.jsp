<%--
  Created by IntelliJ IDEA.
  User: SH
  Date: 2022-01-01
  Time: 오후 3:29
  To change this template use File | Settings | File Templates.
--%>
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
    <script src="/js/search.js"></script>
    <title>검색 더하기</title>
</head>
<body>

<div class="wrap search">
    <c:import url="../header.jsp"/>

    <main>
        <section class="results">
            <h2>가볼만한곳</h2>
            <div class="init">
                검색할 키워드를 선택해주세요
            </div>
            <c:forEach var="i" items="${noticeList}">
            <article>
                <div class="img">
                    <img src="<c:out value="${i.imglink}"/>" alt="<c:out value="${i.placename}"/>">
                </div>
                <div class="contents">
                    <h3><c:out value="${i.placename}"/></h3>
                    <p class="addr"> <c:out value="${i.pos}"/></p>
                    <p class="tel"> <c:out value="${i.tel}"/></p>
                    <p class="keywords"> <c:out value="${i.keywords}"/></p>
                </div>
            </article>
            </c:forEach>


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
                </form>

            </article>
            <article class="keywords">
                <form action="">
                    <input type="checkbox" value="겨울여행" id="겨울여행">
                    <label for="겨울여행">#겨울여행</label>
                </form>
                <form action="">
                    <input type="checkbox" value="관광지" id="관광지">
                    <label for="관광지">#관광지</label>
                </form>
                <form action="">
                    <input type="checkbox" value="데이트코스" id="데이트코스">
                    <label for="데이트코스">#데이트코스</label>
                </form>
                <form action="">
                    <input type="checkbox" value="역사여행" id="역사여행">
                    <label for="역사여행">#역사여행</label>
                </form>
                <form action="">
                    <input type="checkbox" value="가족여행" id="가족여행">
                    <label for="가족여행">#가족여행</label>
                </form>
                <form action="">
                    <input type="checkbox" value="휴식" id="휴식">
                    <label for="휴식">#휴식</label>
                </form>
                <form action="">
                    <input type="checkbox" value="유네스코" id="유네스코">
                    <label for="유네스코">#유네스코</label>
                </form>
                <form action="">
                    <input type="checkbox" value="이색체험" id="이색체험">
                    <label for="이색체험">#이색체험</label>
                </form>
                <form action="">
                    <input type="checkbox" value="제주여행" id="제주여행">
                    <label for="제주여행">#제주여행</label>
                </form>
                <form action="">
                    <input type="checkbox" value="연인과함께" id="연인과함께">
                    <label for="연인과함께">#연인과함께</label>
                </form>
                <form action="">
                    <input type="checkbox" value="수도권" id="수도권">
                    <label for="수도권">#수도권</label>
                </form>
            </article>
            <article class="input">
                <input type="text" name="inputWord" placeholder="검색어 입력">
            </article>
            <button onclick="search()" class="button">검색</button>

        </section>
    </main>
    <c:import url="../footer.jsp"/>
</div>

</body>
</html>
