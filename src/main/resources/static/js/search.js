function search() {
    document.querySelector(".init").setAttribute("style","display:none");
    // h2 키워드따라 제목바꾸기
    const createH2 = document.createElement("h2");
    const keysChoose = document.querySelectorAll(".category .keywords input:checked");
    const keysArticle = document.querySelectorAll(".results .keywords");

    for (let k = 0; k < keysChoose.length; k++) {
        const text = "#" + keysChoose[k].value + " ";
        document.querySelector(".results h2").remove();
        document.querySelector(".results").prepend(createH2);
        document.querySelector(".results h2").append(text);
    }


    // 지역검색
    const posSel = document.querySelector(".category .local input:checked");
    const addr = document.querySelectorAll(".results .addr");
    // console.log(selectaddr);

    let posArr = [];//위치 t,f
    let keyArr = [];//키워드 t,f

    let idx = -1;

    let lists = []; // 데이터리스트
    $.ajax({
        url: "v1/places",
        type: "get",
        dataType: "json",
        contentType: "application/json"
    }).done(response => {
        response.forEach(e => {
            lists.push(e);
        });


        // 데이터 pos들
        for (let i = 0; i < lists.length; i++) {
            if (posSel.value === lists[i].pos.split(" ")[0] || posSel.value==="전체") {
                posArr.push(true);
            } else {
                posArr.push(false);

            }
        }

        let addrCnt=0;
        // 데이터 key들
        for (let i = 0; i < lists.length; i++) {
        let isSame = false;
            //console.log(lists[i].keywords.split("#"));
            // addrCnt=0;
            for (let j = 0; j < lists[i].keywords.split("#").length; j++) {
                for (let k = 0; k < keysChoose.length; k++) {
                     // console.log(lists[i].keywords.split("#")[j]+"//"+keysChoose[k].value);
                    if (lists[i].keywords.split("#")[j] === keysChoose[k].value) {
                        isSame = true;
                    }
                }
            }
            // console.log(isSame);
            if (isSame) {
                keyArr.push(true);
            } else {
                keyArr.push(false);
                addrCnt++;
            }
        if(addrCnt===keyArr.length){ // 모두 false : 아무것도 선택X 전체결과 보여주기
            for(let d=0;d<keyArr.length;d++){
                delete keyArr[d];
                keyArr[d]=true;
            }
        }
        }
        console.log(posArr);
        console.log(keyArr);

        //const resultSec = document.querySelector("section.results");
        const resultSec = $("section.results");
        // 태그 초기화
        const articles = document.querySelectorAll(".results article");
        for (let j = 0; j < articles.length; j++) {
            articles[j].remove();
        }
        for (let i = 0; i < posArr.length; i++) {


            if (posArr[i] && keyArr[i]) {
                // i번째 리스트들을 뽑아준다~!
                // console.log(lists[i].placename);
                // console.log(lists[i].tel);
                // console.log(lists[i].pos);
                // console.log(lists[i].keywords);
                // console.log(lists[i].imglink);
                // html article 전부 지우고 데이터 뿌려주기
                const getName = lists[i].placename;
                const getTel = lists[i].tel;
                const getPos = lists[i].pos;
                const getKey = lists[i].keywords;
                const getLink = lists[i].imglink;


                // 페이지에 태그생성
                resultSec.append(
                    "<article><div class='img'><img src='" + getLink + "' alt='" + getName + "'></div><div class='contents'><h3>" + getName + "</h3><p class='addr'>" + getPos + "</p><p class='tel'>" + getTel + "</p><p class='keywords'>" + getKey + "</p></div></article>"
                );


            }
        }


    });
}