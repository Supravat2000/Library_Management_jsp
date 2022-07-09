<%@include file="connect.jsp" %>
<%
        session.setAttribute("sname",request.getParameter("UserName"));
        PreparedStatement pst=con.prepareStatement("select * from users where UserName=? and password=?");
        pst.setString(1,request.getParameter("UserName"));
       pst.setString(2,request.getParameter("password"));
    ResultSet rs=pst.executeQuery();
	session.setAttribute("uname",request.getParameter("UserName"));
   if(rs.next())
     response.sendRedirect("studenthome.jsp");
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