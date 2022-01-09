const hidden = document.querySelector(".hidden").valueOf();
const a = window.location.pathname;
const arr = a.split("/");
const kind = arr[1];
const postcode = arr[2];

$.ajax ({
    type : "get",
    url : "/v1/getComments"
}) .done (comments =>{
    comments.forEach(e => {
        const id = e.id;
        const content = e.content;
        const time = e.createdAt;
        const code = e.code;
        if(kind === e.kind && postcode === e.postcode) {
            $.ajax ({
                type : "get",
                url : "/v1/getLog"
            }).done (getLog =>{
                content.replace("\r\n" , "<br>");
                const text = "　　　　　";

                if(getLog === "admin" || id === getLog) {
                    $('.hidden').append('<div class="divComment">' + '<span class="spanId">'+`${id}`+`${text}`+'</span>'+ '<span class="spanTime">'+`${time}`+`${text}`+'</span>'+'<span class="'+`${code}`+ '  " id="spanDelete" onclick="delete2()"  class='+`${code}`+'>삭제</span>'+'<br><div>'+`${content}`+'</div></div>');
                }else {
                    $('.hidden').append('<div class="divComment">' + '<span class="spanId">'+`${id}`+`${text}`+'</span>'+ '<span class="spanTime">'+`${time}`+`${text}`+'</span>' +'<br><div>'+`${content}`+'</div></div>' );
                }
            })


        }
    })

})


function delete2() {
    const code = event.target.className; // << 스트링
    console.log("[coomentView] test");
    $.ajax ({
        type : "delete",
        url : `/v1/deleteComment/${code}`,
    }).done (e => {
        alert("댓글이 삭제되었습니다.");
        const ggg = window.location.href;
        location.href=`${ggg}`;
    })
}

