<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <link rel="stylesheet" type="text/css" href="css/update.css">
    <title>Document</title>
</head>
<body>
<c:import url="../header.jsp"/>
<form>
    <div class="wrap">
        <main>
            <section>
            <h1>개인정보 수정</h1>
            <h3>비밀번호</h3>
            <div class="divPw">
                <input type="password" name="password" class="inputPw"><i></i>
            </div>
            <h3>비밀번호 확인</h3>
            <div class="divPwCheck">
                <input type="password" name="passwordCheck" class="inputPwCheck"><i></i>
            </div>
            <span class="spanPwError">비밀번호가 일치하지 않습니다.</span>
            <h3>전화번호</h3>
            <div class="divPhoneNumber">
                <input type="text" name="phonenumber" class="inputPhoneNumber">
            </div>
            <h3>이메일</h3>
            <div class="divEmail">
                <input type="email" name="email" class="inputEmail">
            </div>
            <h3>우편번호</h3>
            <div class="divAdress1">
                <input type="text" id="sample4_postcode" name="adress1" readonly class="inputAdress1">
                <input type="button" onclick="sample4_execDaumPostcode(form)" value="우편번호 찾기" class="buttonAdress">
            </div>
            <h3>도로명주소</h3>
            <div class="divAdress2">
                <input type="text" id="sample4_roadAddress"  name="adress2" readonly class="inputAdress2"><br>
                <input type="hidden" id="sample4_jibunAddress" placeholder="지번주소"  size="60">
                <span id="guide" style="color:#999;display:none"></span>
            </div>
            <h3>상세주소</h3>
            <div class="divAdress3">
                <input type="text" id="sample4_detailAddress"    name="adress3" class="inputAdress3"><br>
                <input type="hidden" id="sample4_extraAddress" placeholder="참고항목"  >
                <input type="hidden" id="sample4_engAddress" placeholder="영문주소"   ><br>
            </div>
            <input type="button" onclick="update(form)" value="완료" class="buttonUpdate">
            <input type="button" onclick="backPage()" value="뒤로가기" class="buttonBack">
            </section>
            <section>
                <h1>회원탈퇴</h1>
                <input type="button" onclick="goDelete(form)" value="회원탈퇴" class="buttonDelete">
            </section>
        </main>
        <aside1></aside1>
        <aside2></aside2>
    </div>
</form>


    <script type="text/javascript" src="js/update.js"></script>
<c:import url="../footer.jsp"/>
</body>
</html>