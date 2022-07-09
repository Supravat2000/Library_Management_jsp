<%@include file="connect.jsp" %>
<%@include file="adminmenu.jsp" %>
<table class="w3-table w3-striped w3-border">
<tr class="w3-light-blue"><th>Id</th><th>BookName</th><th>AuthorName</th><th>Publisher</th><th>AvailableCopies</th></tr>
<%
PreparedStatement pst=con.prepareStatement("select * from books");
ResultSet rs=pst.executeQuery();
int count=0;
%>
<% 
while(rs.next())
	{
		count++;
  %>
  
<tr><td><%= rs.getString("Id")%></td><td><%= rs.getString("BookName")%></td><td><%= rs.getString("AuthorName")%></td><td><%= rs.getString("Publisher")%></td><td><%= rs.getString("AvailableCopies")%></td></tr>
 <%
	}
	%>
	</table>



  
 