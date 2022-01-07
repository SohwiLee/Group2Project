
function commentWrite(form) {
    let idData = null;
    const contentData = form.comment.value;
    let postcodeData = getPostCode();
    let kindData = getKind();
    // 먼저 비로그인 상태라면 로그인 페이지로 넘어가게 함.
    $.ajax ({
        type : "get" ,
        url : "/v1/getLog" ,
        async: false
    }) .done (result => {
        idData = result;
        if(result === "null") {
            alert("로그인 후 이용 가능합니다.");
            location.href="/login";
        }
    })
    // 댓글의 내용이 아무것도 없으면 안내문을 띄움 .

    if(idData !== "null" && contentData === "") {
        alert("댓글의 내용을 입력해주세요 . ");
    }
    if(contentData.length > 3000) {
        alert("댓글은 최대 3000자까지만 가능합니다.");
    }
    if(idData !== "null" && contentData !== "" && contentData.length <= 3000) {
        const data = {
            id : idData,
            postcode : postcodeData,
            kind : kindData,
            content : contentData,
        }
        $.ajax({
            type : "post",
            url : "/v1/addComment",
            dataType : "json",
            contentType: "application/json" ,
            data : JSON.stringify(data)
        }) .done(respone =>{
            const ggg = window.location.href;
            location.href=`${ggg}`;
        })
    }
}

function getKind() {
    const pathname = window.location.pathname;
    const arr = pathname.split("/");
    return arr[1];
}
function getPostCode() {
    const pathname = window.location.pathname;
    const arr = pathname.split("/");
    return arr[2];
}
