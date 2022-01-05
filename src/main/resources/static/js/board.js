function noticeWrite() {

    const title = document.querySelector("input.title").value;
    const content = document.querySelector("textarea#content").value;
    // console.log(title)console.log(content)

    const arr=[];
    $.ajax({
        url: "v1/notices",
        type: "post",
        dataType: "json",
        contentType: "application/json"
    }).done( response => {

    });
}