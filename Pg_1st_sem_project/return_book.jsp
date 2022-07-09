<%@ include file="adminmenu.jsp"%>
<%@ include file="connect.jsp"%>

<%

  String bookid=request.getParameter("book_id");
  System.out.println(bookid);
  String username=request.getParameter("username");
  System.out.println(username);
    String returndate=request.getParameter("return_date");
   System.out.println(returndate);
   PreparedStatement pst=con.prepareStatement("delete from checkout where book_id=? ");
	PreparedStatement pst1=con.prepareStatement("insert into returnbook(book_id,username,return_date) values(?,?,?)");
	pst.setInt(1,Integer.parseInt(bookid));
	pst.executeUpdate();
	pst1.setInt(1,Integer.parseInt(bookid));
	pst1.setString(2,username);
	pst1.setString(3,returndate);
    int x = pst1.executeUpdate();
	if(x>0)
	{
		out.println("<h3>return Successfully");
	}
else 	{
out.println("failed");
}	
	
   %>


