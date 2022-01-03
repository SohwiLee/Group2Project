function search(){
    // 지역 select
    const local = document.querySelector(".category .local input:checked").value;
    // 키워드 select
    const keysChoose=document.querySelectorAll(".category .keywords input:checked");
    const keysArticle=document.querySelectorAll(".results .keywords");

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
            keysArticle[i].parentElement.parentElement.setAttribute('class','');
        }else{
            keysArticle[i].parentElement.parentElement.setAttribute('class','hide');
        }
    }


}