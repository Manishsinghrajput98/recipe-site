<%-- 
    Document   : su
    Created on : Oct 7, 2017, 7:04:57 PM
    Author     : Manish
--%>


<%@page import="java.sql.*"  %>   
  <%
      
  String email="";
  
email=request.getParameter("email");

try
         {
           Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection( "jdbc:mysql://localhost:3306/ki", "root", "12345");
           ResultSet rs ;
          Statement stmt = con.createStatement();
          stmt.executeUpdate( 
			    "INSERT INTO su " +
    "VALUES ('"+email+"')");
                    
%>
<script>alert("succesfully subscribe");</script>  
<%
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			rd.include(request, response);

                            con.close();   }
 catch(SQLException ex)
{%>
<script>alert("Somthing went wrong please try again");</script>  
<% RequestDispatcher rd=request.getRequestDispatcher("index.jsp");rd.include(request, response);
	out.println("SQLException : "+ex.getMessage());
}
                               
               			


  
  
  
  
  
  %>