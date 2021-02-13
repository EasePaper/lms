function LoginCheck() {

    var UserName = document.getElementById("Username").value;
    var Password = document.getElementById("password").value;
    $.ajax({
        type: "POST",
        url: "LMSService.asmx/LoginCheck",
        data: "{UserName:'" + UserName + "',Password:'"+Password+"'}", // here we are specifing the data as a JSON object, not a string in JSON format
        // this will be converted into a form encoded format by jQuery
        // even though data is a JSON object, jQuery will convert it to "firstName=Aidy&lastName=F" so it *is* form encoded
        contentType: "application/json; charset=utf-8", // we are sending in JSON format so we need to specify this
        dataType: "json", // the data type we want back. The data will come back in JSON format
        async: false,
        success: function (data) {
            var res = $.parseJSON(data.d);
            var isValid = res.result;
            alert(isValid);

        },
        failure: function (data) {
            alert("F");
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(xhr.status);
            alert(xhr.responseText);
            alert(thrownError);
        }
    });
}