

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" type="text/css" href="style.css" />
          <script type="text/javascript">
            history.pushState(null,null,'index.jsp');
            window.addEventListener('popstate',function(event)
                                                    {
                                                        
                                                        history.pushState(null,null,'index.jsp');
                                                    }        
            
            );
            
            
        </script>
    </head>
    <body>
        <table cellpadding="10" cellspacing="0" border="0" width="100%" bgcolor="lightyellow">
            <tr><td colspan="2" align="center"><%@include file="banner.jsp" %></td></tr>
            <tr><td colspan="2" align="center"><%@include file="horizontal_menu.jsp" %></td></tr>
                    <tr><td width="40%" align="center">
                            
                            
                            <form method="post" action="validateLogin.jsp">
                                <table cellpadding="10" cellspacing="0" border="0" width="80%" bgcolor="lightyellow">
                                    
                                    <tr bgcolor="red">    <td colspan="4" align="center"><font color="white" size="4">LOGIN HERE..</font></td>   </tr>
                                    <tr>    <td width="25%"></td><td>User Id</td><td><input type="text" name="txt_uid"></td><td width="25%"></td>    </tr>
                                    <tr>    <td></td><td>Password</td><td><input type="password" name="txt_pass"></td><td></td>    </tr>
                                    <tr>    <td colspan="4" align="center"><input type="submit" value="Login!"></td>    </tr>
                                    <tr>    <td colspan="4" align="center"><hr></td>    </tr>
                                    <tr>    <td colspan="4" align="center"><a href="Signup.jsp" class="linkcolor">Sign up Here!</a></td>    </tr>
                                    <tr>    <td colspan="4" align="center"><a href="Forget.jsp" class="linkcolor">Forget Password!</a></td>    </tr>
                                    
                                    
                                    
                                    
                                    
                                </table>
                                
                                
                            </form>
                
                            
                            
                            
                        </td><td align="center">
                            
                            <%@include file="sliding_images.jsp" %>
                            
                        </td></tr>
            
            
            
        </table>
    </body>
</html>
