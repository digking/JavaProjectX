<%

        if(session.getAttribute("usid")==null || session.getAttribute("ps")==null)
            {
                response.sendRedirect("ErrorPage.jsp");
            }

%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
                <%
                   String _category="Academic";
                   

                    Connection cn=(Connection)application.getAttribute("CONN");
                    
                    PreparedStatement ps=cn.prepareStatement("select * from books where category=?");
                    ps.setString(1,_category);
                    
                    ResultSet rs_books=ps.executeQuery();
                    
                
                %>    
                    
                    <table cellpadding="10" cellspacing="0" border="0" width="70%" bgcolor="lightyellow">
                        
                        
               <tr bgcolor="blue">    <td colspan="4" align="center"><font color="white" size="4">ACADEMIC BOOKS</font></td>  </tr>
               
                   <%
                       while(rs_books.next())
                        {
                   %>
                   
                   <tr> <td width="25%"></td><td>Book Name</td><td><%=rs_books.getString(3)%></td><td width="25%"></td> </tr>
                   <tr> <td></td><td>Book Author</td><td><%=rs_books.getString(4)%></td><td></td> </tr>
                   <tr> <td></td><td>Book Publication</td><td><%=rs_books.getString(5)%></td><td></td> </tr>
                   <tr> <td></td><td>Description</td><td><%=rs_books.getString(6)%></td><td></td> </tr>
                   <tr> <td></td><td>Book Price</td><td><%=rs_books.getString(7)%></td><td></td> </tr>
                   <tr> <td></td><td>Book Image</td><td><a href="showImage.jsp?bid=<%=rs_books.getString(1)%>"><img src="showImage.jsp?bid=<%=rs_books.getString(1)%>" width="180" height="180" /></a></td><td></td> </tr>
                   
                   <tr bgcolor="lightgray"><td colspan="4" align="center"><a href="javascript: addToCart('<%=rs_books.getString(1)%>')">ADD TO CART</a></td></tr>
                   
                <%
                            
                        }
                   
                   %>
                
               
            
                        
                        
                        
                        
                        
                    </table>
                    
                    
              
                   
                    
                </td>
            </tr>
            
            
            
        </table>
    </body>
</html>
