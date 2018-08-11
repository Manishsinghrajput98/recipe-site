<%-- 
    Document   : login
    Created on : Oct 7, 2017, 3:33:10 PM
    Author     : Manish
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
   
<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
  
<center>
	
        <link rel="stylesheet" href="css/style_1.css">

	
</head>
 <body style = "background:#ddd ">
    <form action="auth.jsp" method="post">
	<div class="container">
		<div class="login-box animated fadeInUp">
			<div class="box-header">
                            <h5 style="color: red;"><%String e=(String)request.getAttribute("e");
               if(e!=null)out.print(e);%></h5>
                            <h2>Log In</h2>
			</div>
			<label for="username">Username</label>
			<br/>
			<input type="text" name="id" id="username">
			<br/>
			<label for="password">Password</label>
			<br/>
			<input type="password" name="pass" id="password">
			<br/>
			<button type="submit">Sign In</button>
			<br/>
			<a href="fup.jsp"><p class="small">Forgot your password?</p></a>
		</div>
        </div></form>
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