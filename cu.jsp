<%-- 
    Document   : cu.jsp
    Created on : Oct 7, 2017, 2:01:09 PM
    Author     : Manish
--%>

<%@page import="java.sql.*"  %>   
  <%
      
  String name="",email="",mob="",msg="",dob="",ll="";
  name=request.getParameter("name");
  mob=request.getParameter("mob");
ll=request.getParameter("msg");
email=request.getParameter("email");
if(name==null)name="guest";
try
         {
           Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection( "jdbc:mysql://localhost:3306/ki", "root", "12345");
String du = "tab_"+ll;
           ResultSet rs ;
          Statement stmt = con.createStatement();
          stmt.executeUpdate( 
			    "INSERT INTO cu " +
    "VALUES ('"+name+"','"+ll+"','"+email+"','"+mob+"')");
                    
%>
<script>alert("we will contact soon as well as possible");</script>  
<%
			RequestDispatcher rd=request.getRequestDispatcher("contact.jsp");
			rd.include(request, response);

                            con.close();   }
 catch(SQLException ex)
{%>
<script>alert("Somthing went wrong please try again");</script>  
<% RequestDispatcher rd=request.getRequestDispatcher("contact.jsp");rd.include(request, response);
	out.println("SQLException : "+ex.getMessage());
}
                               
               			


  
  
  
  
  
  %>