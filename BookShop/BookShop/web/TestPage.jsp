<%-- 
    Document   : TestPage
    Created on : 09-Feb-2017, 09:29:37
    Author     : raghavendra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script type="text/javascript" language="javascript" >
        String.prototype.startsWith = function (str) {
            return (this.indexOf(str) === 0);
        }
        function ChkValidChar() {
            var txtbx = document.getElementById("txt_word").value;
            if (txtbx.startsWith(".") || txtbx.startsWith("0")) // true
            {
                document.getElementById("txt_word").value = "";
                alert("you can not insert dot and zero as first character");
            }
        }
    </script>
    </head>
    <body>
       

        <input type="text" name="txt_name" onkeyup="ChkValidChar()"/>
    </body>
</html>
