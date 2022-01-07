// 축제정보 불러오기

fetch("/json/festivals.json")
    .then(response => {
        return response.json();
    })
    .then(fData => {

        const jsondata = fData.response.body.items.item;

        let titles = [];
        let images = [];

        // store informations
        for (let i = 0; i < 4; i+=3) {
            titles.push(jsondata[i].title);
            images.push(jsondata[i].firstimage);
        }

        const festivalBox = document.querySelector(".festival");
        for (let i = 0; i < 2; i++) {
            const box = document.createElement("div");
            box.setAttribute("class","contentBox")
            festivalBox.append(box);
            const h4 = document.createElement("h4");
            const imgBox = document.createElement("div");
            imgBox.setAttribute("class","img");
            const image = document.createElement("img");
            box.append(imgBox);
            imgBox.append(image);
            image.setAttribute("src", images[i]);
            imgBox.append(h4);
            h4.append(titles[i]);
        }


    });