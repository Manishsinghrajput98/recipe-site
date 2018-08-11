
<%-- 
    Document   : up
    Created on : Oct 13, 2017, 9:13:38 AM
    Author     : Manish
--%>
<jsp:include page="header.jsp"></jsp:include>
<div class="single">
			<div class="container">
				
				
				<div class="blog-top-in">
					<div class="col-md-4 top-blog">
						<a href="#"><img class="img-responsive" src="images/food21.PNG" alt=" " ></a>
					</div>
				
          
       <%@ page import="java.io.*,java.util.*" %>
<%
String se =request.getParameter("tab");
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
                                   
 %>
          
          <%          rs=stmt.executeQuery("select * from se where tab='"+se+"'");
                    
                                        while(rs.next())
                                                {
                                           String nam= rs.getString("title");
                                           String daa=rs.getString("data");
                                                    
                                           
  

%>    	
                                    
                                    
                                    
                                    
                                    
                                    
                                    <div class="col-md-8 sed-in">
                                   
						<h4><%out.print(nam);%></h4>														  						
						<p><%out.print(daa);%></p>
					</div>
					<div class="clearfix"> </div>
				</div>
										
	<%



  }
          
          
   %>
					
				
		  		    
					<!---->
				
		<!--start-leavecomment-->
			<div class="leave-comment"><div class="table-form">
                            <form method="post" action="cmt.jsp">
				<h3>COMMENTS</h3>
<br>                                
<div style="width:400px ;background-color:lightgoldenrodyellow;">
                                 <% String du = "tab_"+se;
                                
                                 rs=stmt.executeQuery("select * from "+du+" ");
                                          while(rs.next())
                                                {
                                           String nam= rs.getString("name");
                                           String daa=rs.getString("email");
                                           String cmt=rs.getString("cmt");         
                                           
  

%>    	

             <span><%out.print(nam);%></span>
					<%out.print(cmt);%>
				
                                <%}%></div>
                                <br><br><br>
                        <span>Refrence no.</span>
                                <input type="text" value="<%out.print(se);%>" name="tab" readonly>        
				<br>
			<div>
					<span>Your Comment</span>
					<textarea name="cmt"> </textarea>	
				</div>
				
					<input type="submit" value="submit">		
			</form></div>
		</div>
		</div>			
	</div>
<%}

catch(SQLException ex)
{
	out.println("SQLException : "+ex.getMessage());
}
%><!---->
