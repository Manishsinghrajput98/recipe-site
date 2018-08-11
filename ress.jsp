<jsp:include page="header.jsp"></jsp:include>
<br><br>
<html>
<head>
<title>Registration Form</title>

<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
 <link rel="stylesheet" href="css/style_1.css">
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
<link rel="stylesheet" href="css/animate.css">
	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="css/style_1.css">
        <link rel="stylesheet" href="css/bootstrap.css">
	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="css/style.css">
<script type="text/javascript">
 function validate_form() {
 if (document.emp.emp_name.value == "") {
 alert("Please fill in the 'Your Employee Name' box.");
 return false;
            }
  if (document.emp.num.value == "") {
   alert("Enter Employee Number");
                return false;
            }
            alert("sucessfully Submitted");
 
 
 
            if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/).test
(document.emp.email_id.value)) {
                alert("You have entered an invalid email address!")
                return (false)
            }
        }
 
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode;
            if (charCode != 46 && charCode > 31 &&
                (charCode < 48 || charCode > 57)) {
                alert("Enter Number");
                return false;
            }
            return true;
        }
 
 
        //-->
    </script>

				
<body style = "background:#ddd ">
    <form name="emp" action="reg.jsp" onsubmit="return validate_form();" method="post">
        <table align="center" width=40% width="100%" cellspacing="2" cellpadding="2" 
border="5">
            <tr>
                <td colspan="2" align="center"><b>Registration Form.</b></td>
 
            </tr>
            <tr>
            <b>
                <td align="left" valign="top" width="41%"> User Name<span 
                        style="color:red">*</span></td>
 
                <td width="57%"><input type="text" value="" name="name" 
size="25"></td>
            </tr>
            <tr>
                <td align="left" valign="top" width="41%">Contact Number<span 
style="color:red">*</span></td>
                <td width="57%">
                    <input type="number" value="" name="mob" onkeypress="return 
isNumberKey(event)" size="25"></td>
            </tr>
            <tr>
                <td align="left" valign="top" width="41%"> User Address</td>
 
                <td width="57%"><textarea rows="4" maxlen="200" name="ua" 
cols="20"></textarea></td>
            </tr> <tr>
                <td align="left" valign="top" width="41%">Date of Birth</td>
 
                <td width="57%"><input type="date" value="" name="dob" onkeypress="return 
isNumberKey(event)" size="25"></td>
            </tr>
            <tr>
                <td align="left" valign="top" width="40%">Question</td>
                <td width="90%"><select name="sq">
<option value="what is your birth place">what is your birth place</option>               
<option value="what is your first GF or BF name">what is your father name</option>
<option value="what is Your nick name">what is Your nick name</option>
<option value="who is your best friend">who is your best friend</option>

 
</select></td>
 
 
            </tr>
 <tr>
                <td align="left" valign="top" width="41%">Answere</td>
 
                <td width="57%"><input type="text" value="" name="sa" onkeypress="return 
isNumberKey(event)" size="25"></td>
            </tr>
            <tr>
                <td align="left" valign="top" width="41%">Profession</td>
                <td width="57%">
                    <select name="pro">
<option value="House wife">House wife</option>
<option value="Master Safe">Master Safe</option>
<option value="Student">Student</option>
<option value="other">other</option>

 
 
</select></td>
 
 
            </tr>
            <tr>
                <td align="left" valign="top" width="41%">Email<span 
style="color:red">*</span></td>
                <td width="57%">
                    <input type="email" value="" name="email" size="25"></td>
                     
            </tr>


   <tr>
                <td align="left" valign="top" width="41%">Password<span 
style="color:red">*</span></td>
                <td width="57%">
                    <input type="password" value="" name="pass" size="25"></td>
            </tr>
 
<tr>
<td align="left" valign="top" width="41%">Gender</td>
                <td width="57%">
      <!--birthday details ends-->
      <div id="radio_button">
        <input type="radio" name="gen" value="Female">
        <label >Female</label>
        &nbsp;&nbsp;&nbsp;
        <input type="radio" name="gen" value="Male">
        <label >Male</label>
         &nbsp;&nbsp;&nbsp;
        <input type="radio" name="gen" value="Other">
        <label >Other</label>

      </div>
     
         </td>
        </tr>



 
            <tr>
                <td colspan="2">
                    <p align="center">


                    <p><input type="checkbox" name="remember" required>I agree with terms and 
conditions.</p>
                         
                         <p align="center">
                        <input type="submit" value="  Submit" 
name="B4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;
                        <input type="reset" value="  Reset All   " name="B5"></td>
            </tr>
 
        </table>
</b>
    </form>
</body>
 
</html>
<jsp:include page="footer.jsp"></jsp:include>