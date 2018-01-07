

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
                String _id=request.getParameter("txt_id");
                
                    Connection cn=(Connection)application.getAttribute("CONN");
                    
                    PreparedStatement ps=cn.prepareStatement("select * from login where userid=?");
                    ps.setString(1, _id);
                    
                    ResultSet rs=ps.executeQuery();
                    
                    if(rs.next())
                        {
                            out.println("<font color=red><b>*Already Exist!</b></font>");
                        }

        
        %>
    </body>
</html>
