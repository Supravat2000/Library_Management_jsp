<%@include file ="connect.jsp"%>
<%@includefile ="studentmenu.jsp"%>
<%
   PreparedStatement pst =con.prepareStatement("insert into request_book values(?,?)");
   pst.setInt(1,Integer.parseInt(request.getParameter("book_id")));
    pst.setString(2,request.getParameter("username"));
    int x=pst.executeUpdate();
	if(x>0)
		out.println("<h3>requested successfully");
	else
		out.println("<h3> failed request");
%>