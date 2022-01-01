<%--
  Created by IntelliJ IDEA.
  User: SH
  Date: 2022-01-01
  Time: 오후 3:29
  To change this template use File | Settings | File Templates.
--%>
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
    <title>검색 더하기</title>
</head>
<body>
<div class="wrap search">

    <main>
        <section>
            <article>
                <div class="img">
                    <img src="/images/recommend/10.jpg" alt="여행지참고이미지">
                </div>
                <div class="contents">
                    <h3>여행지이름</h3>
                    <p class="addr">주소</p>
                    <p class="tel">전화번호</p>
                    <p class="keywords">키워드</p>
                </div>
            </article>
        </section>
        <section class="category">
            <article class="local">
                <form action="">
                    <label for="01">서울</label>
                    <input type="radio" name="province" value="서울" id="01">
                    <label for="02">부산</label>
                    <input type="radio" name="province" value="부산" id="02">
                    <label for="03">대구</label>
                    <input type="radio" name="province" value="대구" id="03">
                    <label for="04">인천</label>
                    <input type="radio" name="province" value="인천" id="04">
                    <label for="05">광주</label>
                    <input type="radio" name="province" value="광주" id="05">
                    <label for="06">대전</label>
                    <input type="radio" name="province" value="대전" id="06">
                    <label for="07">울산</label>
                    <input type="radio" name="province" value="울산" id="07">
                    <label for="08">세종</label>
                    <input type="radio" name="province" value="세종" id="08">
                    <label for="09">경기</label>
                    <input type="radio" name="province" value="경기" id="09">
                    <label for="10">강원</label>
                    <input type="radio" name="province" value="강원" id="10">
                    <label for="11">충북</label>
                    <input type="radio" name="province" value="충북" id="11">
                    <label for="12">충남</label>
                    <input type="radio" name="province" value="충남" id="12">
                    <label for="13">전북</label>
                    <input type="radio" name="province" value="전북" id="13">
                    <label for="14">전남</label>
                    <input type="radio" name="province" value="전남" id="14">
                    <label for="15">경북</label>
                    <input type="radio" name="province" value="경북" id="15">
                    <label for="16">경남</label>
                    <input type="radio" name="province" value="경남" id="16">
                    <label for="17">제주</label>
                    <input type="radio" name="province" value="제주" id="17">
                </form>
            </article>
            <article class="keywords">
                <form action="">
                    <label for="겨울여행">겨울여행</label>
                    <input type="checkbox" name="" id="겨울여행">
                </form>
                <form action="">
                    <label for="관광지">관광지</label>
                    <input type="checkbox" name="" id="관광지">
                </form>
                <form action="">
                    <label for="데이트코스">데이트코스</label>
                    <input type="checkbox" name="" id="데이트코스">
                </form>
                <form action="">
                    <label for="역사여행">역사여행</label>
                    <input type="checkbox" name="" id="역사여행">
                </form>
                <form action="">
                    <label for="가족과함께">가족과함께</label>
                    <input type="checkbox" name="" id="가족과함께">
                </form>
                <form action="">
                    <label for="휴식">휴식</label>
                    <input type="checkbox" name="" id="휴식">
                </form>
                <form action="">
                    <label for="유네스코">유네스코</label>
                    <input type="checkbox" name="" id="유네스코">
                </form>
                <form action="">
                    <label for="이색체험">이색체험</label>
                    <input type="checkbox" name="" id="이색체험">
                </form>
                <form action="">
                    <label for="제주여행">제주여행</label>
                    <input type="checkbox" name="" id="제주여행">
                </form>
            </article>
            <article class="residence">

            </article>

        </section>
    </main>

</div>
</body>
</html>
