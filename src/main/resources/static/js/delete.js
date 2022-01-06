function deleteCheck(form) {
    const inputId = form.id.value;
    const inputPw = form.pw.value;
    const log = sessionStorage.getItem("log"); // Type String
    let userCode = null;
    let temp = false;
    let code = 100;
    if(inputId === "" || inputPw === "") {
        alert("아이디와 패스워드를 입력해주세요 . ");
    }else {
        //회원탈퇴를 하기 위해 아이디와 비밀번호가 맞는지 유효성 검사 진행
        $.ajax({
            type : "post",
            url : "getCode",
            dataType : "json",
            contentType : "application/json",
            data : JSON.stringify({
                "id" : inputId,
                "pw" : inputPw
            })
        }) .done (getCode => {
            code = getCode;
            // for(let i=0; i<users.length; i++) {
            //     const usersId = users[i].id.valueOf();
            //     const usersPw = users[i].pw.valueOf();
            //     if(log === usersId && inputPw === usersPw) {
            //         temp = true;
            //         userCode = users[i].code.valueOf();
            //         console.log("log : " , log )
            //         console.log("log type : " , typeof log);
            //         console.log("찾은 유저 코드 : " ,userCode);
            //         console.log("userCode type : " , typeof userCode);
            //         break;
            //     }
            // }
            console.log("code : " , code);
            console.log("code type : " , typeof code);
            if(code !== -1) {
                $.ajax({
                    type : "delete" ,
                    url: `/v1/users/${code}`
                }).done (user => {
                    console.log("user : " , user);
                })
                alert("회원탈퇴 완료. 초기화면으로 이동합니다 ..");
                location.href='/';
            }else {
                alert("회원정보가 일치하지 않습니다.");
            }
        })
    }
}