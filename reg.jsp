<%-- 
    Document   : reg
    Created on : Oct 7, 2017, 2:02:02 PM
    Author     : Manish
--%>

<%@page import="java.sql.*"  %>   
  <%
  String name="",email="",mob="",msg="",dob="",ll="",sa="",sq="",ua="",gen="";
  name=request.getParameter("name");
  email=request.getParameter("email");
mob=request.getParameter("mob");
msg=request.getParameter("pass");  
dob=request.getParameter("dob");
ll=request.getParameter("pro");
sa=request.getParameter("sa");
sq=request.getParameter("sq");
ua=request.getParameter("ua");
gen=request.getParameter("gen");
int money=200;

 try
         {
           Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection( "jdbc:mysql://localhost:3306/ki", "root", "12345");

           ResultSet rs ;
          Statement stmt = con.createStatement();
          stmt.executeUpdate( 
			    "INSERT INTO logininfo " +
    "VALUES ('"+name+"','"+email+"','"+ua+"','"+mob+"','"+ll+"','"+gen+"','"+msg+"','"+sq+"','"+sa+"','"+dob+"','act')");
                    
%>
<script>alert("Account Created please login here");</ 
<%
			RequestDispatcher rd=request.getRequestDispatcher("after.jsp");
			rd.include(request, response);

                            con.close();   }
 catch(SQLException ex)
{%>
<script>alert("Insert your correct information try again..");</script>  
<%RequestDispatcher rd=request.getRequestDispatcher("ress.jsp");
			rd.include(request, response);

	out.println("SQLException : "+ex.getMessage());
}
                               
               			


  
  
  
  
  
  %>