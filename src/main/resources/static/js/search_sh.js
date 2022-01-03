
function search() {


    // h2
    const createH2 = document.createElement("h2");
    const keysChoose = document.querySelectorAll(".category .keywords input:checked");
    const keysArticle = document.querySelectorAll(".results .keywords");

    for (let k = 0; k < keysChoose.length; k++) {
        const text = "#" + keysChoose[k].value + " ";
        document.querySelector(".results h2").remove();
        document.querySelector(".results").prepend(createH2);
        document.querySelector(".results h2").append(text);
    }

    // 키워드 select
    let totalArr = new Array(); // article
    for (let i = 0; i < document.querySelectorAll(".results article").length; i++) {
        let arr = new Array(); // 각 article 마다 가지고있는 키워드
        for (let j = 0; j < keysArticle[i].textContent.split("#").length; j++) {
            let articleKey = keysArticle[i].textContent.split("#")[j];
            arr.push(articleKey);
        }
        totalArr.push(arr);
    }
    // console.log(totalArr);
    let addrCnt = 0;
    let cnt = 0;
    for (let i = 0; i < totalArr.length; i++) {
        // if (!addrArr[i]) {
        //     addrCnt++;
        // }
        keysArticle[i].parentElement.parentElement.setAttribute('class', '');
        cnt = 0;
        for (let j = 0; j < totalArr[i].length; j++) {
            for (let k = 0; k < keysChoose.length; k++) {
                if ((keysChoose[k].value) === totalArr[i][j]) {
                    cnt++;
                }
            }
        }
        if(cnt>0){
            keysArticle[i].parentElement.parentElement.setAttribute('class','');
        }else{
            keysArticle[i].parentElement.parentElement.setAttribute('class','hide');
        }
    }

    // if(addrCnt==10){// 전부 false - 선택되지 않을때 : 전체보여주기
    //     for(let i=0;i<addrCnt;i++){
    //         if(cnt>0){
    //             keysArticle[i].parentElement.parentElement.setAttribute('class','');
    //         }else{
    //             keysArticle[i].parentElement.parentElement.setAttribute('class','hide');
    //         }}
    //     }
    // else{
    //     for(let i=0;i<addrCnt;i++){
    //         if(cnt>0 && addrArr[i]){
    //             keysArticle[i].parentElement.parentElement.setAttribute('class','');
    //         }else{
    //             keysArticle[i].parentElement.parentElement.setAttribute('class','hide');
    //         }}
    // }
    let addrArr = [];

    let lists = [];
    const selectaddr = document.querySelector(".category .local input:checked");
    const addr = document.querySelectorAll(".results .addr");
    // 지역 select
    $.ajax({
        url: "v1/places",
        type: "get",
        dataType: "json",
        contentType: "application/json"
    }).done(response => {
        response.forEach(e => {
            lists.push(e);
        });

        for (let i = 0; i < lists.length; i++) {
            if (lists[i].pos.split(" ")[0] == selectaddr.value) {
                addrArr.push(true);
                const article = addr[i].parentNode.parentElement;
                article.setAttribute("class", "show");
            } else {
                const article = addr[i].parentNode.parentElement;
                article.setAttribute("class", "hide");
                addrArr.push(false);
            }
        }
        //console.log(addrArr);
    });
    // console.log(addrArr);
}