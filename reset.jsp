<%-- 
    Document   : reset
    Created on : Oct 7, 2017, 8:26:14 PM
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
       pas= request.getParameter("ans");
       i= request.getParameter("email");
          Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection( "jdbc:mysql://localhost:3306/ki", "root", "12345");
 		 

          ResultSet rs ;
          Statement stmt = con.createStatement();
                                
                                
        
             
          
          
          rs=stmt.executeQuery("select password from logininfo where email='"+i+"' and sa='"+pas+"'");
                    
                                        if(rs.next())
                                                {
                                               name=rs.getString("password");
                                     request.setAttribute("sr",name); request.setAttribute("ir",i);
                                              RequestDispatcher rd=request.getRequestDispatcher("fup.jsp");rd.include(request, response);        
                                           
                                             }else{
                                            request.setAttribute("e","wrong Answere");
                                              RequestDispatcher rd=request.getRequestDispatcher("fup.jsp");rd.include(request, response);                                     }
          
          
   }

catch(SQLException ex)
{
	out.println("SQLException : "+ex.getMessage());
}
  

%> 