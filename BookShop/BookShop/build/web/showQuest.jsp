<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%

    String email=request.getParameter("userid");
    
    Connection cn=(Connection)application.getAttribute("CONN");
    
    PreparedStatement ps=cn.prepareStatement("select security_quest from user_info where email_id=?");
    ps.setString(1,email);
    

    ResultSet rs=ps.executeQuery();
    
    rs.next();

%>
<font color="red" size="4"><%=rs.getString(1)%></font>
<hr>

Enter Answer <input type="text" name="txt_answer">

<hr>
<input type="submit" value="Recover Password">

