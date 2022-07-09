<%@include file="connect.jsp" %>
<%@include file="adminmenu.jsp" %>
<%
  String FirstName=request.getParameter("FirstName");
   String Surname=request.getParameter("Surname");
  String Age=request.getParameter("Age");
  String Gender=request.getParameter("Gender");
  String Email=request.getParameter("Email");
  String UserName=request.getParameter("UserName");
  String Password=request.getParameter("Password");
 
 session.setAttribute("UserName",UserName);
try{
  PreparedStatement pst=con.prepareStatement("insert into users(FirstName,Surname,Age,Gender,Email,UserName,Password) values(?,?,?,?,?,?,?)");
  pst.setString(1,FirstName);
  pst.setString(2,request.getParameter("Surname"));
  pst.setString(3,request.getParameter("Age"));
  pst.setString(4,request.getParameter("Gender"));
  pst.setString(5,request.getParameter("Email"));
    pst.setString(6,request.getParameter("UserName"));

  pst.setString(7,request.getParameter("Password"));
int x=pst.executeUpdate();
	if (x>0){
		String site = new String("AddStudentHome.jsp");
		response.setStatus(response.SC_MOVED_TEMPORARILY);
		response.setHeader("Location", site); 		

	}
	else{
		out.println("Insertion Failed");
		}
	}
	catch(Exception e){
		out.println(e);
	}

%>





