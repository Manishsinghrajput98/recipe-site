<%-- 
    Document   : see
    Created on : Oct 7, 2017, 5:06:39 PM
    Author     : Manish
--%>


<jsp:include page="header.jsp"></jsp:include>
<div class="single">
			<div class="container">
				
				
				<div class="blog-top-in">
					<div class="col-md-4 top-blog">
						
					</div>
				
          
       <%@ page import="java.io.*,java.util.*" %>
<%
String se =request.getParameter("se");
%>


 <%@page import="java.sql.*"  %> 
 <%
  
   try
       {
       String pas="",i="",name="",ll="",tab="";
       pas= request.getParameter("pass");
       i= request.getParameter("id");
          Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection( "jdbc:mysql://localhost:3306/ki", "root", "12345");
 		 

          ResultSet rs ;
          Statement stmt = con.createStatement();
                                
          rs=stmt.executeQuery("select * from se where de like '%"+se+"%'");
                    int co=0;
                                        while(rs.next())
                                                {
                                                    co++;
                                                }
                                       
 %>
          Result <%out.print(co);%> Found
          <%          rs=stmt.executeQuery("select * from se where de like '%"+se+"%'");
                    
                                        while(rs.next())
                                                {
                                           String nam= rs.getString("title");
                                           String daa=rs.getString("de");
                                           tab=rs.getString("tab");
                                           
  

%>    	
                                    
                                    
                                    
                                    
                                    
                                    
                                   
                                        
                                        <a href="se.jsp?tab=<%out.print(tab);%> " >
                                            <h4><%out.print(nam);%></h4>														  						
						<p class="at-in"><%out.print(daa);%></p>
                                   </a></div>
					<div class="clearfix"> <hr/></div>
				</div>
										
	<%



  }
          
          
   }

catch(SQLException ex)
{
	out.println("SQLException : "+ex.getMessage());
}
%>
					

<jsp:include page="footer.jsp"></jsp:include>