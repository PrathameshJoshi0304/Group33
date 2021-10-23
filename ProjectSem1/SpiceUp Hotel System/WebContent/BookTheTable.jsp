<html>
<title>SpiceUp</title>
<head>
<!--bootstrap libraries for implementation of bootstrap and css-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<link
	href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>
<script
	src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script>
<link
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>

<!-- Start Of CSS-->
<style>
/* start of navbar css */
body {
	font-family: ariel;
	/* background:wheat; */
}

#colour {
	color: #5f5950;
}

/*img {
      overflow: hidden;
      position: absolute;
    } */
.navbar {
	overflow: hidden;
	background-color: #333;
	position: fixed;
	/* Set the navbar to fixed position */
	top: 0;
	position: fixed;
	right: 0;
	z-index: 1030;
	/* Position the navbar at the top of the page */
	width: 100%;
	/* Full width */
	left: 0;
	/* overflow: visible; */
	align-items: center;
	justify-content: space-between;
	padding-bottom: 0.5rem;
}

.navbar ul li {
	list-style-type: none;
	width: 120px;
	/* padding: 5px; */
	float: left;
	text-align: center;
	/* margin-right: 50px; */
	padding-top: 8px;
}

.navbar ul {
	display: inline;
	text-align: center;
	margin-right: 150px;
}

#s1 {
	color: #5f5950;
}

.navbar ul li a {
	text-decoration: none;
	color: darkgray;
}
/*hover effect*/
.navbar ul li:hover {
	background-color: #ff9b08;
}
/*hover effect change of text color*/
.navbar ul li a:hover {
	color: white;
}

/*end of navbar css*/
#page1 {
	height: 70px;
}

#page4 {
	height: 970px;
	background-color: #fffaf3;
}
/* // inputs and their css //*/
input:focus ~ label,textarea:focus ~ label,input:valid ~ label,textarea:valid 
	~ label {
	font-size: 0.75em;
	color: #999;
	top: -5px;
	-webkit-transition: all 0.225s ease;
	transition: all 0.225s ease;
}

.styled-input {
	float: left;
	width: 293px;
	margin: 1rem 0;
	position: relative;
	border-radius: 4px;
}

@media only screen and (max-width: 768px) {
	.styled-input {
		width: 100%;
	}
}

.styled-input label {
	color: #999;
	padding: 1.3rem 30px 1rem 30px;
	position: absolute;
	top: 10px;
	left: 0;
	-webkit-transition: all 0.25s ease;
	transition: all 0.25s ease;
	pointer-events: none;
	font-size: 20px;
}

.styled-input.wide {
	width: 650px;
	max-width: 100%;
}

input,textarea {
	padding: 30px;
	border: 2px ridge #ffb03b;
	width: 100%;
	font-size: 1rem;
	background-color: white;
	border-radius: 4px;
}

input:focus,textarea:focus {
	outline: 0;
}

input:focus ~ span,textarea:focus ~ span {
	width: 100%;
	-webkit-transition: all 0.075s ease;
	transition: all 0.075s ease;
}

textarea {
	width: 100%;
	min-height: 15em;
}

.input-container {
	width: 650px;
	max-width: 100%;
	margin: 20px auto 25px auto;
	height: 690px;
}
/* css for contact us and book a table button*/
.submit-btn {
	padding: 7px 35px;
	border-radius: 60px;
	display: inline-block;
	background-color: #ff9b08;
	color: white;
	font-size: 18px;
	cursor: pointer;
	box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.07), 0 2px 10px 0
		rgba(0, 0, 0, 0.067);
	-webkit-transition: all 300ms ease;
	transition: all 300ms ease;
	margin-left: 200px;
}

.submit-btn:hover {
	transform: translateY(1px);
	box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.10), 0 1px 1px 0
		rgba(0, 0, 0, 0.09);
}

@media ( max-width : 768px) {
	.submit-btn {
		width: 100%;
		float: none;
		text-align: center;
	}
}

input[type=checkbox]+label {
	color: #ccc;
	font-style: italic;
}

input[type=checkbox]:checked+label {
	color: #f00;
	font-style: normal;
}

/*css for payment popup*/
.login-trigger {
	font-weight: bold;
	color: #fff;
	background: linear-gradient(to bottom right, #B05574, #F87E7B);
	padding: 15px 30px;
	border-radius: 30px;
	position: relative;
	top: 200px;
}

/*Pop-Up*/
a#payment_popup:hover,a#join_pop:hover {
	border-color: orange;
}

.overlay1 {
	background-color: rgba(0, 0, 0, 0.6);
	bottom: 0;
	cursor: default;
	left: 0;
	opacity: 0;
	position: fixed;
	right: 0;
	top: 0;
	visibility: hidden;
	z-index: 1;
	-webkit-transition: opacity .5s;
	-moz-transition: opacity .5s;
	-ms-transition: opacity .5s;
	-o-transition: opacity .5s;
	transition: opacity .5s;
}

.overlay1:target {
	visibility: visible;
	opacity: 1;
}

.popup1 {
	background-color: #ff9b08;
	border: 3px solid #fff;
	display: inline-block;
	left: 50%;
	opacity: 0;
	padding: 35px;
	position: fixed;
	text-align: justify;
	top: 60%;
	visibility: hidden;
	z-index: 10;
	height: 450px;
	-webkit-transform: translate(-50%, -50%);
	-moz-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	-o-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	-ms-border-radius: 10px;
	-o-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	-moz-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	-ms-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	-o-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	-webkit-transition: opacity .5s, top .5s;
	-moz-transition: opacity .5s, top .5s;
	-ms-transition: opacity .5s, top .5s;
	-o-transition: opacity .5s, top .5s;
	transition: opacity .5s, top .5s;
}

.overlay1:target+.popup1 {
	/* top: 50%; */
	opacity: 1;
	visibility: visible;
}

.close {
	background-color: rgba(0, 0, 0, 0.8);
	height: 30px;
	line-height: 30px;
	position: absolute;
	right: 0;
	text-align: center;
	text-decoration: none;
	top: -15px;
	width: 40px;
	-webkit-border-radius: 15px;
	-moz-border-radius: 15px;
	-ms-border-radius: 15px;
	-o-border-radius: 15px;
	border-radius: 15px;
}

.close:before {
	color: rgba(255, 255, 255, 0.9);
	content: "X";
	font-size: 24px;
	text-shadow: 0 -1px rgba(0, 0, 0, 0.9);
}

.close:hover {
	background-color: rgba(64, 128, 128, 0.8);
}

.popup1 p,.popup1 div {
	margin-bottom: 10px;
}

.popup1 label {
	display: inline-block;
	text-align: left;
	width: 170px;
}

.popup1 input[type="text"],.popup1 input[type="month"] {
	border: 1px solid;
	border-color: #999 #ccc #ccc;
	margin: 0;
	padding: 2px;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	-ms-border-radius: 2px;
	-o-border-radius: 2px;
	border-radius: 2px;
}

.popup1 input[type="text"]:hover,.popup1 input[type="month"]:hover {
	border-color: #555 #888 #888;
}

.popup1 input[type="tel"] {
	border: 1px solid;
	border-color: #999 #ccc #ccc;
	margin: 0;
	padding: 2px;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	-ms-border-radius: 2px;
	-o-border-radius: 2px;
	border-radius: 2px;
}

.popup1 input[type="tel"]:hover {
	border-color: #555 #888 #888;
}
/*end of css for payment popup*/

/* Style buttons */
.buttonbox {
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%)
}

.spinner-button {
	border: 2px solid #000;
	/* display: inline-block; */
	padding: 8px 20px 9px;
	font-size: 18px;
	color: #000;
	background-color: transparent;
	margin-top: 400px;
}

.btn-primary:disabled {
	color: #fff;
	background-color: #000;
	border-color: #000
}

.spinner-button:hover {
	background-color: #000;
	border: 2px solid #000;
	color: #fff
}

.spinner-button i {
	color: #fff
}

.spinner-button:hover i {
	color: #fff
}

.fa {
	color: #fff
}

.fa:hover {
	color: #fff
}
</style>
</head>
<body>

//JSP Code
<%
		int tableId=Integer.parseInt(request.getParameter("choice"));
	    /* out.println(tableId); */  
		System.out.println(tableId);
%>
	<!--page1 home page-->
	<section id="page1">
		<!--navbar logo and menu code-->
		<div class="navbar">
			<a href="#page1" alt=""><img src="nav-logo.png"
				style="margin-top: -10px; height: 80px; width: 90px; margin-left: 6px; margin-top: -2px; border-radius: 6em;"></a>
			<ul type="none">
				<li><a href="modifiedhomepagespiceup.html">HOME</a></li>
				<li><a href="modifiedhomepagespiceup.html">ABOUT US</a></li>
				<li><a href="modifiedhomepagespiceup.html">MENU</a></li>
				<li><a href="BookTheTable.html">BOOK A TABLE</a></li>
				<li><a href="ContactSpiceUp.html">CONTACT US</a></li>

			</ul>
		</div>
		<!--end of navbar logo and menu code-->
	</section>
	<!--end of page1 home page-->



	<section id="page4">
		<h3
			style="margin-left: 460px; margin-top: 0px; padding-top: 30px; padding-left: 5%; font-weight: 800;">
			<font color="sky blue" face="Viner Hand ITC">Book A Table <span
				style="color: #5f5950;">Here!</font>
		</h3>
		<h4 style="margin-left: 470px; margin-top: 0px; color: #ffb03b;">
			<font face="new baskerville">Hotel Timings are 10A.M. to
				11P.M.</font>
		</h4>

		<!--book a table input fields-->
		<div class="container">
			<div class="row input-container">
				<div class="col-xs-12">
					<div class="styled-input wide">
						<input type="text" required /> <label>Name</label>
					</div>
				</div>
				<div class="col-md-6 col-sm-12">
					<div class="styled-input">
						<input type="text" required /> <label>Email</label>
					</div>
				</div>
				<div class="col-md-6 col-sm-12">
					<div class="styled-input" style="float: right;">
						<input type="text" required /> <label>Phone Number</label>
					</div>
				</div>
				<div class="col-md-6 col-sm-12">
					<div class="styled-input" style="float: right;">
						<input type="text" required /> <label>No Of People</label>
					</div>
				</div>
				<div class="col-md-6 col-sm-12">
					<div class="styled-input" style="float: right;">
						<input type="Date" required /> <label></label>
					</div>
				</div>
				<div class="col-md-6 col-sm-12">
					<div class="styled-input" style="float: right;">
						<b><select name="Timing" id=""
							style="width: 300px; height: 90px; border-radius: 5px; color: #999; border-color: #ff9b08;">
								<option selected disabled>Please Choose A Slot</option>
								<option value="10-12 A.M">10-12 A.M</option>
								<option value="10-12 A.M">12-2 P.M</option>
								<option value="10-12 A.M">2-5 P.M</option>
								<option value="10-12 A.M">7-9 P.M</option>
								<option value="10-12 A.M">9-11 P.M</option>

						</select></b> <label></label>
					</div>
				</div>
				<div class="col-md-6 col-sm-12">
					<div class="styled-input" style="float: right;">
						<input type="text" disabled /> <label>Table No</label>
					</div>
				</div>
				<div class="col-xs-12">
					<button
						style="margin-left: 220px; height: 40px; border-style: none; width: 160px; border-radius: 100px; background-color: #ffb03b;">
						<a href="checboxTrialTable.html"
							style="text-decoration: none; font-weight: bold; color: #fff;"
							id="">Please Select A Table</a>
					</button>
				</div>
				<div class="col-xs-12">
					<div class="styled-input wide">
						<textarea required></textarea>
						<label>Message</label>
					</div>
				</div>
				<div class="col-xs-12">
					<a href="#payment_form" id="payment_popup"><div
							class="btn-lrg submit-btn">Book A Table</div></a>
				</div>
			</div>
		</div>

	</section>
	<!-- end of book a table page 4-->



	<!--payment form-->
	<form name="paymentform">
		<a href="" class="overlay1" id="payment_form"></a>
		<div class="popup1">
			<h2>Payment Details</h2>
			<div class="card-images">
				<img src="cardimg.png" height="55px" width="400px">
			</div>
			<div>
				<label for="Card Details">CARD NUMBER</label> <input type="tel"
					inputmode="numeric" placeholder="XXXX XXXX XXXX XXXX"
					id="card number" maxlength="19" value="" />
			</div>
			<div>
				<label for="expiration date">EXPIRY DATE</label> <input type="month"
					id="card month" value="" />
			</div>
			<div>
				<label for="card cvv">CVV</label> <input type="text" id="card cvv"
					value="" maxlength="3" />
			</div>
			<div>
				<label for="card owner">CARD HOLDER NAME</label> <input type="text"
					id="card owner" value="" />
			</div>



			<div class="buttonbox">
				<button class="spinner-button btn btn-primary mb-2" id="btnFetch"
					onclick="setTimeout(paymentSuccess, 4000);">PAY &#x20B9;50</button>
			</div>
			<a class="close" href="#close"></a>
		</div>
	</form>
	<!--end of popup forms-->

	<script>
$(document).ready(function() {
$("#btnFetch").click(function() {
// disable button
$(this).prop("disabled", true);
// add spinner to button
$(this).html(
'<i class="fa fa-circle-o-notch fa-spin"></i> Making Payment...'
);
});
setTimeout( 
            function(){  
                btnFetch.classList.remove('spinning');
                btnFetch.innerHTML = "PAY &#x20B9;50";
                
                
            }, 5000);
            
    }, false);
function paymentSuccess()
{
  
  alert("Payment Succesful")
}


</script>
</body>
</html>