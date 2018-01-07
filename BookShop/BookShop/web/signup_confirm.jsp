

<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.Connection"%>
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
                    
           
                    
                    <%
                        
                        
                        try
                        {
                    
                                String _name=request.getParameter("txt_name");
                                String _mail=request.getParameter("txt_email");
                                String _mobile=request.getParameter("txt_mobile");
                                String _address=request.getParameter("ta_address");
                                String _squest=request.getParameter("cmb_quest");
                                String _sans=request.getParameter("txt_answer");
                                String _pass=request.getParameter("txt_pass");
                                String _utype="Normal";
                                
                                Connection cn=(Connection)application.getAttribute("CONN");
                                
                                 CallableStatement csbt=cn.prepareCall("{ call signup(?,?,?,?,?,?,?,?)}");
                                 csbt.setString(1, _mail);
                                 csbt.setString(2, _name);
                                 csbt.setString(3, _address);
                                 csbt.setString(4, _mobile);
                                 csbt.setString(5, _squest);
                                 csbt.setString(6, _sans);
                                 csbt.setString(7, _pass);
                                 
                                  csbt.setString(8, _utype);
                                  csbt.execute();

                    
                        }
                        catch(Exception e)
                            {
                            
                                javax.swing.JOptionPane.showMessageDialog(null,"Error is::"+e.getMessage());
                            }
                    %>
                    
                    
                    <hr>
                    <h3 align="center">Sign up Successful!</h3>
                    
                    <h4 align="center">To Login <a href="index.jsp">Click Here!</a></h4>
                    <hr>
                    
                    
                    
                    
                </td>
                
                
            </tr>
            
            
            
        </table>
    </body>
</html>
