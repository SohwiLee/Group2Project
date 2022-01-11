let titles = [];
let images = [];
let address = [];
let tel = [];

let contentid=[];
let contenttypeid=[];

// all fiesta
fetch("/json/festivals.json")
    .then(response => {
        return response.json();
    })
    .then(fData => {
        const jsondata = fData.response.body.items.item;

        // store informations
        for (let i = 0; i < jsondata.length; i++) {
            titles.push(jsondata[i].title);
            images.push(jsondata[i].firstimage);
            address.push(jsondata[i].addr1);
            tel.push(jsondata[i].tel);
            contentid.push(jsondata[i].contentid);
            contenttypeid.push(jsondata[i].contenttypeid);
        }

        const section = document.querySelector(".results");

        for (let i = 0; i < address.length; i++) {
            const addrTxt = address[i];
        }


        for (let i = 0; i < titles.length; i++) {
                const article= document.createElement("article");
                section.append(article);
                const h3 = document.createElement("h3");
                const pTag = document.createElement("p");
                const imgBox = document.createElement("div");
                imgBox.setAttribute("class","img");
                const image = document.createElement("img");
                article.append(imgBox);
                imgBox.append(image);
                image.setAttribute("src", images[i]);
                const contentBox = document.createElement("div");
                contentBox.setAttribute("class","contents");
                article.append(contentBox);
                contentBox.append(h3);
                pTag.append(titles[i]);
                h3.append(pTag);
                const aTag = document.createElement("a");
                aTag.append("☆");
                aTag.setAttribute("class","myPick");
                aTag.setAttribute("href","");
                h3.append(aTag);
                const pAddr = document.createElement("p");
                contentBox.append(pAddr);
                pAddr.setAttribute("class","addr");
                pAddr.append(address[i]);
                const pTel = document.createElement("p");
                contentBox.append(pTel);
                pTel.setAttribute("class","tel");
                pTel.append(tel[i]);
        }

    });

function searchF(){
    // 초기화
    // document.querySelector(".init").setAttribute("style","display:none");
    const articles = document.querySelectorAll(".results article");
    for (let i = 0; i < articles.length; i++) {
        articles[i].remove();
    }

    let titles = [];
    let images = [];
    let address = [];
    let tel = [];

// all fiesta
fetch("/json/festivals.json")
    .then(response => {
        return response.json();
    })
    .then(fData => {
        const jsondata = fData.response.body.items.item;
        // console.log(fData.response.body.items.item);

        // store informations
        for (let i = 0; i < jsondata.length; i++) {
            titles.push(jsondata[i].title);
            images.push(jsondata[i].firstimage);
            address.push(jsondata[i].addr1);
            tel.push(jsondata[i].tel);
        }

        const section = document.querySelector(".results");

        // 지역검색
        let posArr = [];//위치 t,f
        const posSel = document.querySelector(".category .local input:checked");

        for (let i = 0; i < address.length; i++) {
            const addrTxt = address[i];
        }

        let cnt = 0;
        for (let i = 0; i < address.length; i++) {
            const text = address[i].split(" ")[0];
            if( text === posSel.value){
                posArr.push(true);
            }else {
                cnt++;
                posArr.push(false);
            }
        }
        if(cnt ===address.length){
            for (let i = 0; i < posArr.length; i++) {
                posArr[i] = true;
            }
        }
        console.log(posArr);

        for (let i = 0; i < posArr.length; i++) {
            if(posArr[i]){ // 검색지역이 일치할 때 정보div 만들어주기
                const article = document.createElement("article");
                section.append(article);
                const h3 = document.createElement("h3");
                const imgBox = document.createElement("div");
                imgBox.setAttribute("class","img");
                const image = document.createElement("img");
                article.append(imgBox);
                imgBox.append(image);
                image.setAttribute("src", images[i]);
                const contentBox = document.createElement("div");
                contentBox.setAttribute("class","contents");
                article.append(contentBox);
                contentBox.append(h3);
                h3.append(titles[i]);
                const pAddr = document.createElement("p");
                contentBox.append(pAddr);
                pAddr.setAttribute("class","addr");
                pAddr.append(address[i]);
                const pTel = document.createElement("p");
                contentBox.append(pTel);
                pTel.setAttribute("class","tel");
                pTel.append(tel[i]);
            }
        }

    });

}
