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
        console.log(e);
        const id = e.id;
        const content = e.content;
        const time = e.createdAt;
        const code = e.code;
        if(kind === e.kind && postcode === e.postcode) {
            $.ajax ({
                type : "get",
                url : "/v1/getLog"
            }).done (getLog =>{
                $('.hidden').append('<section>');
                $('.hidden').append('<span>작성자 :',`${id}`,'</span>', `${time}`);
                if(getLog === "admin" || id === getLog) {
                    $('.hidden').append('<span onclick="delete2()"  class='+`${code}`+'>삭제</span>');
                }
                $('.hidden').append('<br>');
                $('.hidden').append('<section>',`${content}`,'</section><br>'  );
                $('.hidden').append('</section>');
            })


        }
    })

})


function delete2() {
    const code = event.target.className; // << 스트링
    $.ajax ({
        type : "delete",
        url : `/v1/deleteComment/${code}`,
    }).done (e => {
        alert("댓글이 삭제되었습니다.");
        const ggg = window.location.href;
        location.href=`${ggg}`;
    })
}

