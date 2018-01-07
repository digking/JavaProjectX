<%@page import="java.util.Vector"%>
<%

        if(session.getAttribute("usid")==null || session.getAttribute("ps")==null)
            {
                response.sendRedirect("ErrorPage.jsp");
            }

%>

<%

        Vector<Integer> _cart=new Vector<Integer>();
        
        session.setAttribute("MyCart", _cart);


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
                    
                    <h4 align="center">Hello User!</h4>
                    
                </td>
                
                
            </tr>
            
            
        </table>
    </body>
</html>
