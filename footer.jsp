<div class="footer">
		<div class="container">
			<div class="footer-top">
				<div class="col-md-4 amet-sed">
				<h4>SGSITS,INDORE</h4>
				<p class="flan">23,Sir M.visvesvaraya marg shri Govindram seksaria institute of technology and science <span>
					indore,452001</span></p>
				<p>Phone: <label>  8305864589,7987234093 </label></p>
                              
                                <p>Email: <label> sgsits1956@gmail.com</label></p>
                                <p>Website: <label> <a href="www.sgsits.com.jsp">www.sgsits.com</label></p></a>
				<img class="img-responsive" src="images/ar.png" alt="">

				</div>
				<div class="col-md-3 amet-sed-box ">
					<ul class="nav-bottom">
						
						
						<
						
					       <li><a href="contact.jsp">Contact </a></li>							
                                               <% String a=(String)session.getAttribute("name");if(a!="admin"){%>  <li><a href="fpr.jsp">Work place </a></li>							
				<%}%> </ul>
				</div>
                                
				<div class="col-md-5 amet-sed-top ">				
						<div class="enter">
                                                    <form action="su.jsp" method="post">
							<input type="text" name="email" value="ENTER YOUR EMAIL TO SUBSCRIBE" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" >	
							<input type="submit" value="">
						</form>	
                                                    
                                                    
                                                 
						</div>	
						 
				</div>
				<div class="clearfix"> </div>
			</div>
				
		</div>
                               
		 <script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	</div>

</body>
</html>