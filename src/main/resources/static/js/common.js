//header nav functions
function btnOpen(){
    $("button.open").click(function(e){
        //e.stopPropagation();
        e.preventDefault();
        $("nav").removeClass("none");
       $("nav").addClass("navShow");
    });
}

function btnClose(){
    $("button.close").click(function(e){
        //e.stopPropagation();
        e.preventDefault();
        $("nav").removeClass("navShow");
       $("nav").addClass("none");
    });
}
