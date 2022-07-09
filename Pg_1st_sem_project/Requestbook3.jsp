<!doctype html>
<html>
<head>
Request Book
</head>
<body>
<%
String Studentname=session.getAttribute("sname").toString();
%>
<form action = Request_Book.jsp method= post>
UserName<input type=text value="<%=Studentname%>" name=username readonly><br><br>
Book_Id<input type=text name= book_id><br><br>
<input type = submit value=submit>
</form>
</body>
</html>
