<%@include file="connect.jsp" %>
<%@include file="studentmenu.jsp" %>
<table>
<tr><th>Id</th><th>BookName</th><th>AuthorName</th><th>Publisher</th></tr>
<%
PreparedStatement pst=con.prepareStatement("select * from books");
ResultSet rs=pst.executeQuery();
int count=0;
%>
Books name are<br><br>
<% 
while(rs.next())
	{
		count++;
  %>
  
<tr><td><%= rs.getString("Id")%></td><td><%= rs.getString("BookName") %></td><td><%= rs.getString("AuthorName")%></td><td><%= rs.getString("Publisher")%></td></tr>

 <%
	}
	
	%>
	</table><br><br>
	<button onclick="location.href='Requestbook3.jsp'"> RequestBook</button>



  
 