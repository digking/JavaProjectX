

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
                    
                    <form method="post" action="signup_confirm.jsp">
                        
                        <table cellpadding="10" cellspacing="0" border="0" width="80%" bgcolor="lightyellow">
                            
                            <tr bgcolor="blue">    <td colspan="4" align="center"><font color="white" size="4">SIGN UP HERE..</font></td>    </tr>
                            <tr>    <td width="25%"></td><td>Enter Name</td><td><input type="text" name="txt_name"></td><td width="25%"></td>    </tr>
                                    <tr>    <td></td><td>Enter Address</td><td>
                                
                                            <textarea name="ta_address" rows="5" cols="30">
                                                


                                            </textarea>
                                            
                                            
                                </td><td></td>    </tr>
                                    <tr>    <td></td><td>Enter Mobile</td><td><input type="number" name="txt_mobile" onkeypress="return checkOnlyDigits(event)"   onkeyup="crossCheckLength(this.value)" id="tm" pattern="[1-9]{1}[0-9]{9}"><br><font color="red"><div id="mes"></div></font></td><td id="errorMsg"></td>  </tr>
                                    <tr>    <td></td><td>Enter Email</td><td>
                                            
                                            <input type="email" name="txt_email" onkeyup="crossCheck(this.value)">
                                           
                                            
                                            
                                        
                                        </td><td><b id="info"></b></td>    </tr>
                                    
                                            <tr>    <td></td><td>Security Question</td><td>
                                
                                                    <%!
                                                    
                                                        String[] quest={"What is your Nick name?","What is your first school name?","What is your favourite food?"};
                                                    %>
                                                    
                                                    <select name="cmb_quest">
                                                        
                                                        <option value="" selected>-select security question-</option>
                                                        <%
                                                            for(String _name:quest)
                                                                {
                                                        %>
                                                        
                                                        
                                                        <option value="<%=_name%>"><%=_name%></option>
                                                        <%
                                                                }
                                                        
                                                        %>
                                                    </select>
                                                  
                                                    
                                                    
                                                    
                                                    
                                        </td><td></td>    </tr>
                                            <tr><td></td><td>Enter Answer</td><td><input type="text" name="txt_answer"></td><td></td></tr>
                                            <tr><td></td><td>Enter Password</td><td><input type="password" name="txt_pass"></td><td></td></tr>
                                            <tr><td></td><td>Confirm Password</td><td><input type="password" name="txt_pass1"></td><td></td></tr>
                                            <tr><td colspan="4" align="center"><input type="submit" value="Signup!"></td></tr>
                                            <tr><td colspan="4" align="center"><hr></td></tr>
                                            
                            
                            
                        </table>
                        
                        
                        
                    </form>
                    
                    
                </td>
                
                
            </tr>
            
            
            
        </table>
    </body>
</html>
