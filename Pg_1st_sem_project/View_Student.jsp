<%@include file="connect.jsp" %>
<%@include file="adminmenu.jsp" %>
<table class="w3-table w3-striped w3-border">
<tr class="w3-light-blue"><th>FirstName</th><th>Surname</th><th>Age</th><th>Email</th></tr>
<%
PreparedStatement pst=con.prepareStatement("select * from users");
ResultSet rs=pst.executeQuery();
int count=0;
%>
Students name are<br><br>
<%
while(rs.next())
	{
		count++;
  %>
<tr><td><%= rs.getString("FirstName")%></td><td><%= rs.getString("Surname") %></td><td><%= rs.getString("Age")%></td><td><%= rs.getString("Email")%></td></tr>
 <%
	}
	%>
	</table>



  
 