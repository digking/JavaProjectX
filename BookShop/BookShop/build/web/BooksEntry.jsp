

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
                    
                 <%!
                 
                    String[] categories={"Academic","Professional","Religious","Kids","Magazines"};
                 
                 %>
                    <form method="post" action="UploadServlet" enctype="multipart/form-data">
                        
                        <table cellpadding="10" cellspacing="0" border="0" width="80%" bgcolor="lightblue">
                            <tr bgcolor="blue">    <td colspan="4" align="center"><font color="white" size="4">BOOK ENTRY FORM</font></td>    </tr>
                            <tr>    <td width="25%"></td><td>Select Category</td><td>
                                    <select name="cmb_category">
                                        <option value="" selected>-select category-</option>
                                        <%
                                            for(String _cat:categories)
                                                {
                                                
                                         %>
                                        
                                         <option value="<%=_cat%>"><%=_cat%></option>
                                        <%
                                                
                                                }
                                        
                                        %>
                                        
                                    </select>
                                
                                
                                
                                </td><td width="25%"></td>    </tr>
                            <tr>    <td></td><td>Book Name</td><td><input type="text" name="txt_name"></td><td></td>    </tr>
                            <tr>    <td></td><td>Author</td><td><input type="text" name="txt_author"></td><td></td>    </tr>
                            <tr>    <td></td><td>Publication</td><td><input type="text" name="txt_publication"></td><td></td>    </tr>
                                    <tr>    <td></td><td>Description</td><td>
                                
                                            <textarea name="ta_description" rows="5" cols="30">
                                                

                                            </textarea>
                                            
                                            
                                            
                                </td><td></td>    </tr>
                                    <tr>    <td></td><td>Enter Price</td><td><input type="text" name="txt_price"></td><td></td>    </tr>
                                    <tr>    <td></td><td>Enter Image</td><td><input type="file" name="file_upload"></td><td></td>    </tr>
                                    <tr><td colspan="4" align="center"><input type="submit" value="submit"></td></tr>
                                    <tr><td colspan="4" align="center"><hr></td></tr>
                            
                            
                            
                            
                        </table>
                        
                        
                        
                        
                        
                    </form>
                    
                    
                </td>
            </tr>
            
            
            
        </table>
    </body>
</html>
