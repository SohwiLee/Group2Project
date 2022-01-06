let temp = false;
function checkId(form) {
    const idData = form.id.value;
    const pwData = form.pw.value;

    if(idData === "" ||  pwData === "" ) {
        alert("아이디와 패스워드를 입력해주세요 . ");
    }else {
        // 아이디가 존재하는지 유효성 검사 .
        $.ajax({
            type : "post",
            url : "login",
            dataType : "json",
            contentType: "application/json",
            data : JSON.stringify({
                "id" : idData ,
                "pw" : pwData
            })
        }) . done(respone => {
            // 아이디가 중복되었을 경우 끝까지 데이터처리를 할 필요가 없기 떄문에 for문을 씀 .
            // for(let i =0; i<respone.length; i++) {
            //     if(respone[i].id.valueOf() === idData) {
            //         temp = true;
            //         break;
            //     }
            // }
            if(respone === true) {
                alert(`${idData}님께서 로그인 하셨습니다.`);
                // sessionStorage.setItem('log' , idData);
                location.href='/';
            }else {
                alert("회원정보를 다시 확인해주세요.");
                temp = false;
            }

        })

    }
}




