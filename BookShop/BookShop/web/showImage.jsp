
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <%
                int _id=Integer.parseInt(request.getParameter("bid"));
                
                    Connection cn=(Connection)application.getAttribute("CONN");

                PreparedStatement  ps_image=cn.prepareStatement("select image from books where bid=?");
                ps_image.setInt(1, _id);
                
               ResultSet rs_image=ps_image.executeQuery();
               
               rs_image.next();
               
               Blob _image_in_blob=rs_image.getBlob(1);
               
               byte[] _image_in_bits=(byte[])_image_in_blob.getBytes(1,(int)_image_in_blob.length());
               
               OutputStream ous=response.getOutputStream();
               response.setContentType("image/jpg");
               
               ous.write(_image_in_bits);
               
               ous.flush();
               ous.close();

            %>
    </body>
</html>
