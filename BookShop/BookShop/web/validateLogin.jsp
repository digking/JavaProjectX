

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    <%
                String _uid=request.getParameter("txt_uid");
                String _pass=request.getParameter("txt_pass");
                
                   Connection cn=(Connection)application.getAttribute("CONN");
                   

                   PreparedStatement ps=cn.prepareStatement("select * from login where userid=? and password=?");
                   ps.setString(1,_uid);
                   ps.setString(2,_pass);
                   
                   ResultSet rs=ps.executeQuery();
                   
                   if(rs.next())
                    {
                        session.setAttribute("usid",_uid);
                        session.setAttribute("ps",_pass);
                        if(rs.getString(3).equals("Admin"))
                            {
                                response.sendRedirect("AdminWay.jsp");
                            }
                        else if(rs.getString(3).equals("Normal"))
                            {
                                response.sendRedirect("UserWay.jsp");
                            }
                        
                    }
                   else
                     {
                                response.sendRedirect("ErrorPage.jsp");
                      }

    
    %>
        
        
    </body>
</html>
