<%-- 
    Document   : cmt
    Created on : Oct 7, 2017, 4:50:00 PM
    Author     : Manish
--%>
 <link rel="stylesheet" href="css/style_1.css">
<%@page import="java.sql.*"  %>   
  <%
      if(session.getAttribute("name")==null)
      {
      response.sendRedirect("login.jsp");
      }
      
  String name="",email="",mob="",msg="",dob="",ll="";
  name=(String)session.getAttribute("name");
  email=(String)session.getAttribute("id");
mob=request.getParameter("cmt");
ll=request.getParameter("tab");
dob=request.getParameter("se");
if(name==null)name="guest";
try
         {
           Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection( "jdbc:mysql://localhost:3306/ki", "root", "12345");
String du = "tab_"+ll;
           ResultSet rs ;
          Statement stmt = con.createStatement();
          stmt.executeUpdate( 
			    "INSERT INTO "+du+" " +
    "VALUES ('"+name+"','"+email+"','"+mob+"')");
                    
%>
<script>alert("Comment pleaced");</script>  
<%
			RequestDispatcher rd=request.getRequestDispatcher("se.jsp?tab="+ll);
			rd.include(request, response);

                            con.close();   }
 catch(SQLException ex)
{%>
<script>alert("Somthing went wrong please try again");</script>  
<%     RequestDispatcher rd=request.getRequestDispatcher("se.jsp?tab="+ll);
			rd.include(request, response);

	out.println("SQLException : "+ex.getMessage());
}
                               
               			


  
  
  
  
  
  %>