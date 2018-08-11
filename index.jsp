
<!DOCTYPE html>
<html>
<head>
<title> Home</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="css/component.css" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
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
	<div class="header">
		<div class="container">
		<!---->
			<div class="header-logo">
				<div class="logo">
				<a href="index.html"><img src="images/logo.png" alt="" ></a>
				</div>
				<div class="top-nav">
					<span class="menu"> </span>
					<ul>
						<li><a href="ress.jsp" data-hover="RESISTER">RESISTER </a> </li>
						<li><a href="404.jsp" data-hover="UPLOADED RECIPE" >UPLOADED RECIPES</a></li>
			
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
                                                        <input type="search" name="se" placeholder="What are you looking for?" class=""required>
<input type="submit" value="Search" class="button">
                                                        </form></li>
 
                                                <% 
        String n=(String)session.getAttribute("name");
if(n!=null){%><li><a data-hover="Welcome <% out.print(n);%>"><a href="well.jsp">Welcome</a> <% out.print(n);%></a></li><li><a data-hover="Logout" href="logout.jsp">Logout</a></li>
        <%  }else{
        %>
        <li><a href="ress.jsp"  data-hover="Regstration">Registration</a></li>
        <li><a href="login.jsp" data-hover="Login">Login</a></li>
      <%}%>
                                                                      
					</ul>
                                    
		</div>
      
		<div class="header-top">
                    
                    <img class="img-responsive" src="images/manish4.png" width="600" alt="">
                        
			<h2>About This Website</h2>
			<p class="to-do">This website purpose is that we want to explore some extra ordinary dishes across india. there is no website available on net which gives you the searching option in same website so we just tried for fullfill this gap, that is why  this website is unique . in this site firstly user can access the general description about recipe & user can give thier suggsetions about recipes as a guest. & if user want to publsih their recipes by thier profile so they must have an account on website.  </p>
			<center>
</center>
			<img class="img-responsive" src="images/ar.png" alt="">
		</div>
	</div>
</div>
<!---->
			<div class="content">
				<div class="container">
				<div class="content-top">
			<div class="content-top-grid">					
						<div class="col-md-7">
                                                  <div class="clearfix"> </div>
						</div>
						<div class="col-md-6">
                                                   
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="content-top-grid">					
						<div class="col-md-7">
							<a href="jale.jsp"><img class="img-responsive" src="images/food14.PNG" alt=""></a>
						</div>
                                                       
                                                       
													
                            
                      
					
                                                    <a href="jale.jsp">
                                                    <div class="col-md-5 content-top-at ">    
                                                        <h3>INDIAN    JALEBI    RECIPES</h3></a>
							<p>Jalebi is a hot favourite on any special occasion be it a birthday, wedding or festival. Jalebis though mostly eaten by themselves, can also be soaked in warm milk. </span> </p>
						</div>
						<div class="clearfix"> </div>
						</div>
						<div class="col-md-6">
                                                   
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="content-top-grid">					
						<div class="col-md-7">
							<a href="idli.jsp"><img class="img-responsive" src="images/food11.PNG" alt=""></a>
						</div>
                                            <a href="idli.jsp">
						<div class="col-md-5 content-top-at ">
                                                    <h3>INDIAN    IDLI-SAMBAR   RECIPES</h3></a>
							<p>Idli is a traditional breakfast in many South Indian Households. Idli is basically a ?Steamed Rice Cake? prepared with fermented batter of Rice and Urad Dal. It is also one of the food that I grew up having </span> </p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
			<!---->
					
                        
					<div class="content-bottom">
						<div class="container">
						<div class="content-top-grid">					
						<div class="col-md-7">
							<a href="chikan.jsp"><img class="img-responsive" src="images/food9.PNG" alt=""></a>
						</div>
                                                    <a href="chikan.jsp"
						<div class="col-md-5 content-top-at ">
                                                            <h3>INDIAN BUTTER CHICKEN RECIPES</h3></a>
							<p> Indian cooking offers a beautiful melange of herbs and spices, and if your favourite meat is chicken, then there are many lip-smacking options for you to go all out and indulge.

Chicken cooked in fiery desi flavors is a dream come true for all non-vegetarians </span> </p>
						</div>
						
					      
							
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>		
				<!---->			<jsp:include page="footer.jsp"></jsp:include>