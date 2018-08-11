<%-- 
    Document   : auth
    Created on : Oct 7, 2017, 2:01:49 PM
    Author     : Manish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<%

%>


 <%@page import="java.sql.*"  %> 
 <%
   
   try
       {
       String pas="",i="",name="",ll="";
       pas= request.getParameter("pass");
       i= request.getParameter("id");
          Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection( "jdbc:mysql://localhost:3306/ki", "root", "12345");
 		 

          ResultSet rs ;
          Statement stmt = con.createStatement();
                                
                                
        
             
          
          
          rs=stmt.executeQuery("select * from logininfo where email='"+i+"' and password='"+pas+"' and status!='dct'");
                    
                                        if(rs.next())
                                                {
                                               name=rs.getString("name");
                                            session.setAttribute("id",i);
                                            session.setAttribute("name",name);
                                         
                                            response.sendRedirect("well.jsp");
                                             }else{
                                            request.setAttribute("e","please check your email & password or contact admin");
                                              RequestDispatcher rd=request.getRequestDispatcher("login.jsp");rd.include(request, response);                                     }
          
          
   }

catch(SQLException ex)
{
	out.println("SQLException : "+ex.getMessage());
}
  

%> 