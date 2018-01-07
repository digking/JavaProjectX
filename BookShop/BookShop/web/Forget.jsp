

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" type="text/css" href="style.css" />
         <script lang="JavaScript" type="text/javascript" src="prog1.js">
             </script>
    </head>
    <body>
        <table cellpadding="10" cellspacing="0" border="0" width="100%" bgcolor="lightyellow">
            <tr><td colspan="2" align="center"><%@include file="banner.jsp" %></td></tr>
            <tr><td colspan="2" align="center"><%@include file="horizontal_menu.jsp" %></td></tr>
                   
            
            <tr>
                
                <td colspan="2" align="center">
                    
                    
                    <form method="post" action="recoverPassword.jsp">
                        
                        <table cellpadding="10" cellspacing="0" border="0" width="70%" bgcolor="lightyellow">
                            
                            
                            <tr bgcolor="red">    <td colspan="4" align="center"><font color="white" size="4">Forget Password Form</font></td>   </tr>
                            <tr>    <td width="25%"></td><td>Enter User Id</td><td><input type="text" name="txt_id" id="inputval"></td><td width="25%"><a href="javascript: fetchQuestion()">Get Question</a></td>    </tr>
                            <tr>    <td colspan="4" align="center" id="output"></td>    </tr>
                            <tr>    <td colspan="4"><hr></td>    </tr>
                            
                            
                            
                        </table>
                        
                        
                        
                    </form>
                    
                </td>
                
                
            </tr>
            
            
            
        </table>
    </body>
</html>
