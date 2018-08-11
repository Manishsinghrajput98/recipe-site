<%-- 
    Document   : fpr
    Created on : Oct 7, 2017, 7:16:51 PM
    Author     : Manish
--%>

<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
  
<center>
	
        <link rel="stylesheet" href="css/style_1.css">

	
</head>
<body> <form action="aa.jsp" method="post">
	<div class="container">
		<div class="login-box animated fadeInUp">
			<div class="box-header">
				<h2>Admin  LogIn</h2>
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