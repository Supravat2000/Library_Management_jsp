<%@ page import="java.text.SimpleDateFormat" %>  
<%@page import="java.util.Date"%>  
<%@include file="connect.jsp"%>
<%@includefile="adminmenu.jsp"%>
<!doctype html>
<body>
<form action ="return_book.jsp" method=post>
book_id<input type= text name=book_id>
username<input type=text name=username>
returndate<input type=text name=return_date>
<input type =submit value=submit>
</form>
</body>
</html>
