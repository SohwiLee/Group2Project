function back() {
    history.back();
}
function checkBoxs(form) {
    if(form.checkBox[0].checked === true &&form.checkBox[1].checked === true  ) {
        location.href="join";
    }else {
        const a = document.querySelector('.error');
        a.style.display = "block";
    }

}

$( document ).ready( function() {
    $( '.checkAll' ).click( function() {
        $( 'input' ).prop( 'checked', this.checked );
    });
});