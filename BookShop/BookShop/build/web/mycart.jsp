
<%

        if(session.getAttribute("usid")==null || session.getAttribute("ps")==null)
            {
                response.sendRedirect("ErrorPage.jsp");
            }

%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Vector"%>
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
                    
                    <table cellpadding="0" cellspacing="0" border="0" width="70%" bgcolor="lightyellow">
                        
                        <tr bgcolor="red"><td colspan="4" align="center"><font color="white" size="4">BOOKS IN CART</font></td></tr>
                    <%
                        Connection cn=(Connection)application.getAttribute("CONN");
                        
                        
                        
                        
                            Vector<Integer> _vect=(Vector<Integer>)session.getAttribute("MyCart");
                             

                              for(int i=0;i<_vect.size();i++)
                                {
                                    PreparedStatement ps=cn.prepareStatement("select * from books where bid=?");
                                    ps.setInt(1,_vect.get(i));
                                    
                                   ResultSet rs=ps.executeQuery();
                                   rs.next();
                               %>
                    
                        
                        
                        <tr>    <td><%=rs.getString(3)%></td><td><%=rs.getString(7)%></td><td><img src="showImage.jsp?bid=<%=rs.getString(1)%>" width="100" height="100" /></td></tr>
                        <%
                                   
                                   
                                   rs.close();
                                    
                                    
                                     ps.close();
                                }

                    %>
                    
                    </table>
                    
                    
                </td>
                
                
            </tr>
            
            
        </table>
    </body>
</html>
