<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <link rel="stylesheet" type="text/css" href="css/join.css">
    <title>Document</title>
</head>
<body>
<c:import url="../header.jsp"/>

<form>

    <div class="wrap">
        <main>
            <h1>회원가입</h1>
            <h3>아이디</h3>
            <div class="divId">
                <input type="text" name="id" class="inputId">
            </div>
            <span class="spanIdError">중복된 아이디입니다.</span>
            <h3>비밀번호</h3>
            <div class="divPw">
                <input type="password" name="pw" class="inputPw"><i></i>
            </div>
            <h3>비밀번호 확인</h3>
            <div class="divPwCheck">
                <input type="password" name="pwCheck" class="inputPwCheck"><i></i>
            </div>
            <span class="spanPwError">비밀번호가 일치하지 않습니다.</span>
            <h3>이름</h3>
            <div class="divFirstName">
                <input type="text" name="firstname" class="inputFirstName">
            </div>
            <h3>주민등록번호</h3>
            <div class="divResident">
                <input type="text" name="residentfront" class="inputResidentFront"> - <input type="text" name="residentback" class="inputResidentBack">
            </div>
            <h3>이메일</h3>
            <div class="divEmail">
                <input type="email" name="email" class="inputEmail">
            </div>
            <h3>핸드폰번호</h3>
            <div class="divPhoneNumber">
                <input type="text" name="phonenumber1" class="inputPhoneNumber1"> -
                <input type="text" name="phonenumber2" class="inputPhoneNumber2"> -
                <input type="text" name="phonenumber3" class="inputPhoneNumber3">

            </div>
            <h3>우편번호</h3>
            <div class="divAdress1">

                <input type="text" id="sample4_postcode"  name="adress1" class="inputAdress1" readonly>
                <input type="button" onclick="sample4_execDaumPostcode(form)" value="우편번호 찾기" class="buttonAdress"><br>
            </div>
            <h3>도로명주소</h3>
            <div class="divAdress2">
                <input type="text" id="sample4_roadAddress"   name="adress2" class="inputAdress2" readonly><br>
                <input type="hidden" id="sample4_jibunAddress" placeholder="지번주소"  >
                <span id="guide" style="color:#999;display:none"></span>
            </div>
            <h3>상세주소</h3>
            <div class="divAdress3">
                <input type="text" id="sample4_detailAddress"    name="adress3" class="inputAdress3">
                <input type="hidden" id="sample4_extraAddress" placeholder="참고항목"  >
                <input type="hidden" id="sample4_engAddress" placeholder="영문주소"   >
            </div>
            <span class="spanAllCheckError">전부 필수정보 입니다.</span><br>
            <input type="button" onclick="check(form)" value="회원가입하기" class="buttonJoin"><br>
            <input type="button" onclick="backPage()" value="뒤로가기" class="buttonBack">
        </main>
        <aside1></aside1>
        <aside2></aside2>
    </div>
</form>

<c:import url="../footer.jsp"/>
<script type="text/javascript" src="js/join.js"></script>
</body>
</html>