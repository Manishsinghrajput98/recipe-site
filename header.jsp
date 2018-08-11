
<!DOCTYPE html>
<html>
<head>
<title>manishhshhsh</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="css/component.css" />
<script src="js/jquery.min.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
<!--//fonts-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
				<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
					</script>

</head>
<body>
	<!--header-->
	<div class="header-in">
		<div class="container">	
				<!---->
			<div class="header-logo">
				<div class="logo">
				<a href="index.jsp"><img src="images/logo.png" alt="" ></a>
				</div>
				<div class="top-nav">
					<span class="menu"> </span>
					<ul>
						<li><a href="404.jsp" data-hover="UPLOADED RECIPES" >UPLOADED RECIPES</a></li>
						
						<li><a href="contact.jsp" data-hover="CONTACT">CONTACT </a></li>
                                                

                                                
                                                
					</ul>
					<!--script-->
				<script>
					$("span.menu").click(function(){
						$(".top-nav ul").slideToggle(500, function(){
						});
					});
			</script>				
		</div>
		<div class="clearfix"> </div>
			</div>
			<!---->
				<div class="top-menu">					
					<ul>
                                                 <li><a href="index.jsp" data-hover="HOME">HOME</a></li>
                                  		<li><a href="404.jsp" data-hover="UPLOADED RECIPES" >UPLOADED RECIPES</a></li>
		        
						<li><a href="contact.jsp" data-hover="CONTACT">CONTACT</a></li>                                                                      
                                                <li><form action="see.jsp" method="get" class="">
                                                        	<input type="search" name="se" placeholder="What are you looking for?" required class="">
                                                           <input type="submit" value="Search" class="button">
                                            
                                                        </form></li>
                                                        
                                                        
 
                                                <% 
        String n=(String)session.getAttribute("name");
if(n!=null){%><li><a data-hover="Welcome <% out.print(n);%>">Welcome <% out.print(n);%></a></li><li><a data-hover="Logout" href="logout.jsp">Logout</a></li>
        <%  }else{
        %>
        <li><a href="ress.jsp"  data-hover="Regstration">Regstration</a></li>
        <li><a href="login.jsp" data-hover="Login">Login</a></li>
      <%}%>
                
         
					</ul>
                                    
        
		
                                
                                </div>	
	
                </div>
</div>
