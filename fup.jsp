<%-- 
    Document   : fup
    Created on : Oct 7, 2017, 8:05:35 PM
    Author     : Manish
--%>

<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
  
<center>
	
        <link rel="stylesheet" href="css/style_1.css">

	
</head>
<body>
	<div class="container">
		<div class="login-box animated fadeInUp">
			<div class="box-header">
				<h2>Reset password</h2>
			</div>
                    <%String ir=(String)request.getAttribute("ir");
                    if(ir==null){
                    %>
                    
                    
                    
                    <form action="ch.jsp" method="post">
                        
                        
                        
                        
                        
			<%String i=(String)request.getAttribute("i");%>
                <%String s=(String)request.getAttribute("s");
                    if(s==null)
                    {
                    
                    %><label for="username">Email</label>
			<br/>
                        
                        <input type="text" id="email"name="email"><br/>     
		
                
                        <button type="submit">Submit</button>
			<br/><%}%>
                    </form>
                <% 
                 if(s!=null)
                    {
                    
                    %>
                    
                        <form action="reset.jsp" method="post">
                            
                           <% if(i!=null)
                    {
                    
                    %>
                <label for="username">Email</label>
			<br/>
                     
                    <input type="text" id="email" name="email" value="<%out.print(i);%>" readonly>
			<br/><%}%>
                        <label for="Question"><%out.print(s);%></label>
			<br/>
			<br/>
                        <label for="username">Answere</label>
			<br/>
			<input type="text" id="ans" name="ans">
			<br/><button type="submit">Reset Password</button>
                </form><%} }else{%>

               <b> <lable>Your Email is <% out.print(ir);%></lable><br/><br/><lable>Your Password is <% out.print(request.getAttribute("sr"));%></lable>
</b>

<%}%>
		</div>
	</div>
</body>

<script>
	$(document).ready(function () {
    	$('#logo').addClass('animated fadeInDown');
    	$("input:text:visible:first").focus();
	});
	$('#username').focus(function() {
		$('label[for="username"]').addClass('selected');
	});
	$('#username').blur(function() {
		$('label[for="username"]').removeClass('selected');
	});
	$('#password').focus(function() {
		$('label[for="password"]').addClass('selected');
	});
	$('#password').blur(function() {
		$('label[for="password"]').removeClass('selected');
	});
</script>
</center>
</html>
<br>
<br>
<br>
<br>
<jsp:include page="footer.jsp"></jsp:include>