<%@ include file="connect.jsp"%>
<%@ include file="adminmenu.jsp"%>
<%
  try{
	  String Id=request.getParameter("Id");
	  PreparedStatement pst=con.prepareStatement("delete from books where Id=?");
	  pst.setString(1,Id);
	  int t= pst.executeUpdate();
	  if(t>0)
		  out.println("<h3> delete sucecessfull");
	  con.close();
  }
  catch(Exception e)
  {
	  out.println(e);
  }
  %>
  
  
	  
