//header nav functions
function btnOpen(){
    $("button.open").click(function(e){
        e.stopPropagation();
        $("nav").removeClass("none");
    });
}

function btnClose(){
    $("button.close").click(function(e){
        e.stopPropagation();
       $("nav").addClass("none");
    });
}
