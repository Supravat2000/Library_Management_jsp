<%@ page import="java.sql.*" %>
<%!
        Connection con=null;
%>
<%
         try{
                 Class.forName("com.mysql.jdbc.Driver");//compatibility
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","supravatdas");

            }
            catch(Exception e)
             {
                  out.println(e);
            }
%>