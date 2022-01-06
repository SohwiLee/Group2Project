logout();
    function logout() {
        $.ajax({
            type : "get",
            url : "logoutController",
        }).done (request => {

        })
        location.href="/";
    }