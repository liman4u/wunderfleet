jQuery(document).ready(function() {


    //Get cookies and set them in the various input
    $("#first_name").val(getCookie('first_name'));
    $("#last_name").val(getCookie('last_name'));
    $("#telephone").val(getCookie('telephone'));

    $("#street_name").val(getCookie('street_name'));
    $("#house_number").val(getCookie('house_number'));
    $("#zip_code").val(getCookie('zip_code'));
    $("#city").val(getCookie('city'));

    $("#account_owner").val(getCookie('account_owner'));
    $("#iban").val(getCookie('iban'));


    $("#success_box").hide();

    $("#error_box").hide();

});


function setCookie(name,value) {
    var days = 7;
    var expires = "";
    if (days) {
        var date = new Date();
        date.setTime(date.getTime() + (days*24*60*60*1000));
        expires = "; expires=" + date.toUTCString();
    }
    document.cookie = name + "=" + (value || "")  + expires + "; path=/";
}

function getCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for(var i=0;i < ca.length;i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1,c.length);
        if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
    }
    return null;
}
function eraseCookie(name) {
    document.cookie = name+'=; Max-Age=-99999999;';
}



