<%@include file="adminmenu.jsp"%>
<%@include file="connect.jsp"%>
 <table>
 <tr><th>transaction_id</th><th>book_id</th><th>username</th><th>return_date</th></tr>
 <%
PreparedStatement pst=con.prepareStatement("select * from checkout");
ResultSet rs=pst.executeQuery();
int count=0;
%>
<% 
while(rs.next())
	{
		count++;
  %>
  
<tr><td><%= rs.getString("transaction_id")%></td><td><%= rs.getString("book_id")%></td><td><%= rs.getString("username")%></td><td><%= rs.getString("return_date")%><button onclick="location.href='returnbook.jsp'">Return_Book</button>
</td></tr></td></tr>
 <%
	}
	%>

 
    