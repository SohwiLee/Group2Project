<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <link rel="stylesheet" type="text/css" href="css/update.css">
    <title>Document</title>
</head>
<body>
    <h3>회원정보 수정15</h3><br>
    <form>
        변경할 비밀번호 : <input type="password" name="password"><br>
        변경할 비밀번호 확인 　: <input type="password" name="passwordCheck"><input type="button" onclick="checkPassword()" value="비밀번호 확인"><br>
        전화번호　　　　: <input type="text" name="phonenumber"><br>
        이메일       　: <input type="email" name="email"><br>
        우편번호 : <input type="text" id="sample4_postcode" placeholder="우편번호" name="adress1" readonly>
        <input type="button" onclick="sample4_execDaumPostcode(form)" value="우편번호 찾기"><br>
        주소 : <input type="text" id="sample4_roadAddress" placeholder="도로명주소" size="60" name="adress2" readonly><br>
        <input type="hidden" id="sample4_jibunAddress" placeholder="지번주소"  size="60">
        <span id="guide" style="color:#999;display:none"></span>
        상세주소 : <input type="text" id="sample4_detailAddress" placeholder="상세주소"  size="60" name="adress3"><br>
        <input type="hidden" id="sample4_extraAddress" placeholder="참고항목"  size="60">
        <input type="hidden" id="sample4_engAddress" placeholder="영문주소"  size="60" ><br>
        <input type="button" onclick="update(form)" value="완료">
        <input type="button" onclick="backPage()" value="뒤로가기">
    </form>


    <script type="text/javascript" src="js/update.js"></script>

</body>
</html>