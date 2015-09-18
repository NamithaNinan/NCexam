<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script type="text/javascript">
    function goodbye(e) {
        if(!e) e = window.event;
        //e.cancelBubble is supported by IE - this will kill the bubbling process.
        e.cancelBubble = true;
        e.returnValue = 'LEAVING THIS PAGE WILL END YOUR TEST. DONT REFRESH THE PAGE OR ELSE IT WILL LEAD TO END OF THE RESULT';
     
        //e.stopPropagation works in Firefox.
        if (e.stopPropagation) {
            e.stopPropagation();
            e.preventDefault();
        }
    }
    window.onbeforeunload=goodbye;
    window.history.forward(1);
    document.attachEvent("onkeydown", my_onkeydown_handler);
    
    function my_onkeydown_handler()
    {
    switch (event.keyCode)
    {
    case 116 : // 'F5'
    event.returnValue = false;
    event.keyCode = 0;
    window.status = "We have disabled F5";
    break;
    }
    } 
    document.onmousedown=disableclick;
    status="Right Click is not allowed";
    function disableclick(e)
    {
    if(event.button==2)
    {
    alert(status);
    return false;	
    }
    }
        function IsValidEmail(email) {
            var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
            return expr.test(email);
        };
        function ValidateEmail() {
            var email = document.getElementById("txtEmail").value;
            if (!IsValidEmail(email)) {
                alert("Invalid email address.");
            }
            else {
                alert("Valid email address.");
            }
        }
        
    </script>
</head>
<body>
    <form id="form1">
    <input type="text" id="txtEmail" />
    <input type="button" id="btnValidate" value="Validate Email" onclick = "ValidateEmail()" />
    </form>
</body>
</html>