<!DOCTYPE html>
<html>
<head>
</head>
<body>
<script>
    function sendDynamicpwd() {
        // $("#verifactionCode_validate_message").text("");
        if (validateMsisdn()) {
            var msisdn=$("#resetPwdMsisdn").val();
            $.ajax({
                url: "$!basePath/findPwd/sendDynamicpwd",
                type: "post",
                dataType: "text",
                data: {
                    msisdn: msisdn
                },
                success: function (data) {
                    $("#sendDynamicpwd_btn").removeClass("normal");
                    $("#sendDynamicpwd_btn").addClass("not");
                    $("#sendDynamicpwd_btn").attr("onclick", "");
                    verifyInterval = setInterval(verifyBtnStateChange, 1000);
                },
                error: function (data) {
                    // $("#verifactionCode_validate_message").text(data.responseText);
                    alert(data.responseText);
                }
            });
        }
    }
</script>
</body>
</html >
