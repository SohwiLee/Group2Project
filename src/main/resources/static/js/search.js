
function search(){
let len = document.querySelector(".dataSize").textContent;
console.log("len:"+len)
    let localselect=false;
    let keyselect=false;
    // h2
    const createH2 = document.createElement("h2");
    const keysChoose=document.querySelectorAll(".category .keywords input:checked");
    const keysArticle=document.querySelectorAll(".results .keywords");

    for(let k=0;k<keysChoose.length;k++){
        const text = "#"+keysChoose[k].value+" ";
        document.querySelector(".results h2").remove();
        document.querySelector(".results").prepend(createH2);
        document.querySelector(".results h2").append(text);
    }


    // 지역 select
    let addrArr;
    const addr = document.querySelectorAll(".results .addr");
    const selectaddr= document.querySelector(".local input:checked");
    const local = document.querySelector(".category .local input:checked");
    if(local==null && selectaddr==null){ // 아무것도 선택하지 않고 검색 > 전체지역 검색
        document.querySelector(".local input#all").setAttribute("checked","checked");
    } else{
        addrArr=new Array();
        for(let i=0;i< parseInt(len) ;i++){
           addrArr.push(false);
           //addr[i].setAttribute("class"," ");
            if(addr[i].textContent.split(" ")[1] === selectaddr.value){
               addr[i].setAttribute("class","show");
                addrArr.splice(i,1,true);
            }else{
               addr[i].setAttribute("class"," ");
                addrArr.splice(i,1,false);
            }
        }

    }


    // 키워드 select
    let totalArr = new Array();
    for(let i=0;i<document.querySelectorAll(".results article").length;i++){
        let arr= new Array();
        for(let j=0;j<keysArticle[i].textContent.split("#").length;j++){
            let articleKey = keysArticle[i].textContent.split("#")[j];
            arr.push(articleKey);
        }
        totalArr.push(arr);
    }
    // console.log(totalArr);

    for(let i=0;i<totalArr.length;i++){
        keysArticle[i].parentElement.parentElement.setAttribute('class','');
        let cnt = 0;
        for(let j=0;j<totalArr[i].length;j++){
            for(let k=0;k<keysChoose.length;k++){
                if((keysChoose[k].value) === totalArr[i][j]){
                    cnt++;
                }
            }
        }
        if(cnt>0){
            // console.log(keysChoose[k].value +", "+totalArr[i][j] );
            keysArticle[i].parentElement.parentElement.setAttribute('class','');keyselect=true;
        }else{
            keysArticle[i].parentElement.parentElement.setAttribute('class','hide');
        }
    }


    console.log("addrarr:"+addrArr);
    // console.log("localS:"+localselect);

}