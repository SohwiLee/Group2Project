let temp = false;
function check(form) {
    const idData = form.id.value;
    const pwData = form.pw.value;
    const pwCheckData = form.pwCheck.value;
    const firstnameData = form.firstname.value;
    const residentfrontData = form.residentfront.value;
    const residentbackData = form.residentback.value;
    const phonenumberData = form.phonenumber.value;
    const emailData = form.email.value;
    const adress1Data = form.adress1.value;
    const adress2Data = form.adress2.value;
    const adress3Data = form.adress3.value;

    if(idData === "" ||  pwData === "" ) {
        alert("아이디와 패스워드를 입력해주세요 . ");
    }else {
        //회원가입을 하기 전에 아이디가 중복 되지는 않는지 유효성 검사를 해야함 .
        $.ajax({
            type : "get",
            url : "v1/users",
            dataType : "json",
            contentType: "application/json"
        }) . done(respone => {
            // 아이디가 중복되었을 경우 끝까지 데이터처리를 할 필요가 없기 떄문에 for문을 씀 .
            for(let i =0; i<respone.length; i++) {
                if(respone[i].id.valueOf() === idData) {
                    temp = true;
                }
            }
            if(temp === false) {
                //     UserController 의 addUser 메소드를 통해 가입처리 .
                const data = {
                    id: idData,
                    pw: pwData,
                    firstname: firstnameData,
                    residentfront : residentfrontData,
                    residentback : residentbackData,
                    phonenumber : phonenumberData,
                    email : emailData,
                    adress1 : adress1Data,
                    adress2 : adress2Data,
                    adress3 : adress3Data
                }
                $.ajax({
                    type: "post",
                    url: "/v1/users",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(data)
                })
                    .done(response => {
                        console.log("[join.js]done : ", response);
                    })
                alert(`${idData}님 회원가입을 환영합니다.`);
                // sessionStorage.setItem('log' , idData);
                location.href='/';
            }else {
                alert("중복된 아이디입니다.");
            }

        })

    }
}

//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
function sample4_execDaumPostcode(form) {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
                extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample4_postcode').value = data.zonecode;
            document.getElementById("sample4_roadAddress").value = roadAddr;
            document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

            document.getElementById("sample4_engAddress").value = data.addressEnglish;

            // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
            if(roadAddr !== ''){
                document.getElementById("sample4_extraAddress").value = extraRoadAddr;
            } else {
                document.getElementById("sample4_extraAddress").value = '';
            }

            var guideTextBox = document.getElementById("guide");
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                guideTextBox.style.display = 'block';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                guideTextBox.style.display = 'block';
            } else {
                guideTextBox.innerHTML = '';
                guideTextBox.style.display = 'none';
            }
        }
    }).open();
}




