<%@include file="connect.jsp" %>
<%
        PreparedStatement pst=con.prepareStatement("select * from Admin where id=? and password=?");
        pst.setString(1,request.getParameter("id"));
       pst.setString(2,request.getParameter("password"));
    ResultSet rs=pst.executeQuery();
   if(rs.next())
     response.sendRedirect("Adminhome.jsp");
   else
    {
%>
<center>
<font color=red><h3>Invalid UserId or password</h3></font>
<%@include file="index1.html" %>
<%
    }
    con.close();
%>