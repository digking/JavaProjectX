 <%@page import="java.util.Vector"%>
<%
     
        int bid=Integer.parseInt(request.getParameter("bid"));
        
        Vector<Integer> _vect=(Vector<Integer>)session.getAttribute("MyCart");
        
        if(_vect.contains(bid))
            {
            
            }
        else
            {
                _vect.add(bid);
            }


%>