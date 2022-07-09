<%@ include file="connect.jsp" %>
<%@ include file="adminmenu.jsp"%>
<%
        try{
         String UserName=request.getParameter("UserName");
         PreparedStatement pst=con.prepareStatement("delete from users where UserName=?");
         pst.setString(1,UserName);
          int t=pst.executeUpdate();
        if(t>0)
         out.println("<h3>Delete successfully");
      con.close();
      }
      catch(Exception e)
       {
           out.println(e);
       }
%>