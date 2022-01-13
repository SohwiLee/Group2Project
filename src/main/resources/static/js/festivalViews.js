let titles = [];
let images = [];
let images2 = [];
let address = [];
let address2 = [];
let tel = [];
let eventstartdate = [];
let eventenddate = [];
let contentid = [];
let contenttypeid = [];

function showPage(code) {
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
                images2.push(jsondata[i].firstimage2);
                address.push(jsondata[i].addr1);
                address2.push(jsondata[i].addr2);
                tel.push(jsondata[i].tel);
                eventstartdate.push(jsondata[i].eventstartdate);
                eventenddate.push(jsondata[i].eventenddate);
                contentid.push(jsondata[i].contentid);
                contenttypeid.push(jsondata[i].contenttypeid);
            }

            let title;
            let start;
            let end;
            let image1;
            // let image2;
            let addr1;
            let addr2;
            let telNum;

            console.log(titles.length);
            for (let i = 0; i < titles.length; i++) {
                if (contentid[i] == code) {
                    console.log("here!!!");
                    idx = i;
                    title = titles[i];
                    image1 = images[i];
                    // image2 = images2[i];
                    addr1 = address[i];
                    addr2 = address2[i];
                    telNum = tel[i];
                    start = eventstartdate[i];
                    end = eventenddate[i];

                    const h2 = document.querySelector("h2");

                    const img1 = document.querySelector(".img1 img");
                    // const img2 = document.querySelector(".img2 img");

                    const tdAddr = document.querySelector(".addr");
                    const tdTel = document.querySelector(".tel");

                    const tdStart = document.querySelector(".start");
                    const tdEnd = document.querySelector(".end");

                    h2.append(title);
                    img1.setAttribute("src", image1);
                    // img2.setAttribute("src", image2);
                    tdAddr.append(addr1);
                    // tdAddr.append(addr2);
                    tdTel.append(telNum);
                    tdStart.append(start);
                    tdEnd.append(end);

                }
            }

        });
}
// function showPage(code) {
    // console.log("here!!!");
    //
    // let title;
    // let start;
    // let end;
    // let image1;
    // // let image2;
    // let addr1;
    // let addr2;
    // let telNum;
    //
    //
    // console.log(titles.length);
    // for (let i = 0; i < titles.length; i++) {
    //     console.log("here!!!");
    //     if (contentid[i].toString() === (code)) {
    //         console.log("here!!!");
    //         idx = i;
    //         title = titles[i];
    //         image1 = images[i];
    //         // image2 = images2[i];
    //         addr1 = address[i];
    //         addr2 = address2[i];
    //         telNum = tel[i];
    //         start = eventstartdate[i];
    //         end = eventenddate[i];
    //
    //         const h2 = document.querySelector("h2");
    //
    //         const img1 = document.querySelector(".img1 img");
    //         // const img2 = document.querySelector(".img2 img");
    //
    //         const tdAddr = document.querySelector(".addr");
    //         const tdTel = document.querySelector(".tel");
    //
    //         const tdStart = document.querySelector(".start");
    //         const tdEnd = document.querySelector(".end");
    //
    //         h2.append(title);
    //         img1.setAttribute("src", image1);
    //         // img2.setAttribute("src", image2);
    //         tdAddr.append(addr1);
    //         tdAddr.append(addr2);
    //         tdTel.append(telNum);
    //         tdStart.append(start);
    //         tdEnd.append(end);
    //
    //     }
    // }
// }


