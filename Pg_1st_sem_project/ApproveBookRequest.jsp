<%@include file="adminmenu.jsp"%>
<%@include file="connect.jsp"%>
<!doctype html>

<html>
<head>
Student's Book request Approve
</head>
<body>
<form action="Approve_Book.jsp">
	Return time<input type=date name="returndate"><br><br>

<table>

<tr><th>Book_Id</th><th>Book_Name</th><th>Student_Name</th></tr>
<%
ResultSet rs= con.createStatement().executeQuery("select*from request_book");
while(rs.next())
{
	System.out.println(rs.getString(2));
	String Book_Name=null;
	int Id=rs.getInt(1);
	PreparedStatement pst=con.prepareStatement("select BookName from books where Id=?");
     pst.setInt(1,Id);
    ResultSet rs1=pst.executeQuery();
		while(rs1.next())
		{
			Book_Name=rs1.getString(1);
			session.setAttribute("book_name",Book_Name);
		}
	%>
	
	
	<tr><td><%=rs.getString(1)%></td><td><%= Book_Name%></td><td><%=rs.getString(2)%></td><td><input type=submit value=Approve></td></tr>
	
	
	
	<%
	}
	%>
	</table><br><br>
	</form>
	</body>
	</html>
	


