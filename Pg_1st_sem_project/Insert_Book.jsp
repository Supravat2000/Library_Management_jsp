<%@include file="connect.jsp" %>
<%@include file="adminmenu.jsp" %>
<%
  String Id=request.getParameter("Id");
   String BookName=request.getParameter("BookName");
  String AuthorName=request.getParameter("AuthorName");
  String ISBN=request.getParameter("ISBN");
  String Publisher=request.getParameter("Publisher");
  String TotalCopies=request.getParameter("TotalCopies");
  String AvailableCopies=request.getParameter("AvailableCopies");
 
 session.setAttribute("Id",Id);
try{
  PreparedStatement pst=con.prepareStatement("insert into books(Id,BookName,AuthorName,ISBN,Publisher,TotalCopies,AvailableCopies) values(?,?,?,?,?,?,?)");
  pst.setString(1,Id);
  pst.setString(2,request.getParameter("BookName"));
  pst.setString(3,request.getParameter("AuthorName"));
  pst.setString(4,request.getParameter("ISBN"));
  pst.setString(5,request.getParameter("Publisher"));
    pst.setString(6,request.getParameter("TotalCopies"));

  pst.setString(7,request.getParameter("AvailableCopies"));
int x=pst.executeUpdate();
	if (x>0){
		out.println("<h3>insertion book successfully");

	}
	else{
		out.println("Insertion book Failed");
		}
	}
	catch(Exception e){
		out.println(e);
	}

%>





