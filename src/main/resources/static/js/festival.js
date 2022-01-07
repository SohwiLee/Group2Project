
function search(){
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
        for (let i = 0; i < jsondata.length; i++) {
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
            contentBox.setAttribute("class",".contents");
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


    });

}
