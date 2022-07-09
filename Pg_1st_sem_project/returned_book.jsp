<%@include file="connect.jsp" %>
<%@include file="adminmenu.jsp" %>
<table>
<tr><th>book_id</th><th>username</th><th>return_date</th></tr>
<%
PreparedStatement pst=con.prepareStatement("select * from returnbook");
ResultSet rs=pst.executeQuery();
int count=0;
%>
<h1>Returned books from student<br><br>
<%
while(rs.next())
	{
		count++;
  %>
<tr><td><%= rs.getString("book_id")%></td><td><%= rs.getString("username") %></td><td><%= rs.getString("return_date")%></td></tr>
 <%
	}
	%>



  
 