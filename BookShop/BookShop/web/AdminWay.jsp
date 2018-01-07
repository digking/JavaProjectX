<%

        if(session.getAttribute("usid")==null || session.getAttribute("ps")==null)
            {
                response.sendRedirect("ErrorPage.jsp");
            }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
        <table cellpadding="10" cellspacing="0" border="0" width="100%" bgcolor="lightyellow">
            <tr><td colspan="2" align="center"><%@include file="banner.jsp" %></td></tr>
            <tr><td colspan="2" align="center"><%@include file="horizontal_menu.jsp" %></td></tr>
            <tr>
                <td colspan="2" align="center">
                    
                    <table cellpadding="10" cellspacing="0" border="0" width="70%">
                        
                        <tr bgcolor="blue"><td align="center"><font color="white" size="4">ADMIN FORMS</font></td></tr>
                        <tr><td align="center"><a href="AdminSignup.jsp">ANOTHER ADMIN SIGNUP!</a></td></tr>
                        <tr><td align="center"><a href="BooksEntry.jsp">Books Entry</a></td></tr>
                         <tr><td align="center"><hr></td></tr>
                        
                    </table>

                </td>
            </tr>
            
            
            
        </table>
    </body>
</html>
