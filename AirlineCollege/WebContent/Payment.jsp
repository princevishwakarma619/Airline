<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>

<title style="color: brown">LOGIN/SIGN UP WITH ZAUR</title>
<meta name="author" content="Zaur">
<meta descryption content="Presentation of website">
<meta name="keywords" content="technology, cyber security, software">
<meta http-equiv="refresh" content="100">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<link rel="stylesheet" href="test_logincopy.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
<link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css'
	rel='stylesheet'>

</head>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

nav {
	display: flex;
	height: 80px;
	width: 100%;
	background: #1b1b1b;
	align-items: center;
	justify-content: space-between;
	/* padding: 0 50px 0 100px; */
	flex-wrap: wrap;
}

img {
	/* padding-top: 10px; */
	height: 80px;
	width: 120px;
}

nav .logo {
	color: #fff;
	font-size: 35px;
	font-weight: 600;
}

nav ul {
	display: flex;
	flex-wrap: wrap;
	list-style: none;
}

nav ul li {
	margin: 0 5px;
}

nav ul li a {
	color: #f2f2f2;
	text-decoration: none;
	font-size: 18px;
	font-weight: 500;
	padding: 8px 15px;
	border-radius: 5px;
	letter-spacing: 1px;
	transition: all 0.3s ease;
}

nav ul li a.active, nav ul li a:hover {
	color: #111;
	background: #fff;
}

nav .menu-btn i {
	color: #fff;
	font-size: 22px;
	cursor: pointer;
	display: none;
}

input[type="checkbox"] {
	display: none;
}

@media ( max-width : 1000px) {
	nav {
		padding: 0 40px 0 50px;
	}
}

@media ( max-width : 920px) {
	nav .menu-btn i {
		display: block;
	}
	#click:checked ~.menu-btn i:before {
		content: "\f00d";
	}
	nav ul {
		position: fixed;
		top: 80px;
		left: -100%;
		background: #111;
		height: 100vh;
		width: 100%;
		text-align: center;
		display: block;
		transition: all 0.3s ease;
	}
	#click:checked ~ul {
		left: 0;
	}
	nav ul li {
		width: 100%;
		margin: 40px 0;
	}
	nav ul li a {
		width: 100%;
		margin-left: -100%;
		display: block;
		font-size: 20px;
		transition: 0.6s cubic-bezier(0.68, -0.55, 0.265, 1.55);
	}
	#click:checked ~ul li a {
		margin-left: 0px;
	}
	nav ul li a.active, nav ul li a:hover {
		background: none;
		color: cyan;
	}
}

.content {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	text-align: center;
	z-index: -1;
	width: 100%;
	padding: 0 30px;
	color: #1b1b1b;
}

.content div {
	font-size: 40px;
	font-weight: 700;
}
/* Payment Box */
body {
    font-family: 'Roboto', sans-serif!important;
	margin:0;
	padding:0;
	box-sizing: border-box;
}

.mainscreen
{
	min-height: 100vh;
	width: 100%;
	display: flex;
    flex-direction: column;
    background-color: #DFDBE5;
    background-image: url("https://wallpaperaccess.com/full/3063067.png");
    color:#963E7B;
}

.card {
	width: 60rem;
    margin: auto;
    background: white;
    position:center;
    align-self: center;
    top: 50rem;
    border-radius: 1.5rem;
    box-shadow: 4px 3px 20px #3535358c;
    display:flex;
    flex-direction: row;
    
}

.leftside {
	background: #030303;
	width: 25rem;
	display: inline-flex;
    align-items: center;
    justify-content: center;
	border-top-left-radius: 1.5rem;
    border-bottom-left-radius: 1.5rem;
}

.product {
    object-fit: cover;
	width: 20em;
    height: 20em;
    border-radius: 100%;
}

.rightside {
    background-color: #ffffff;
	width: 35rem;
	border-bottom-right-radius: 1.5rem;
    border-top-right-radius: 1.5rem;
    padding: 1rem 2rem 3rem 3rem;
}

p{
    display:block;
    font-size: 1.1rem;
    font-weight: 400;
    margin: .8rem 0;
}

.inputbox
{
    color:#030303;
	width: 100%;
    padding: 0.5rem;
    border: none;
    border-bottom: 1.5px solid #ccc;
    margin-bottom: 1rem;
    border-radius: 0.3rem;
    font-family: 'Roboto', sans-serif;
    color: #615a5a;
    font-size: 1.1rem;
    font-weight: 500;
  outline:none;
}

.expcvv {
    display:flex;
    justify-content: space-between;
    padding-top: 0.6rem;
}

.expcvv_text{
    padding-right: 1rem;
}
.expcvv_text2{
    padding:0 1rem;
}

.button{
    background: linear-gradient(
135deg
, #753370 0%, #298096 100%);
    padding: 15px;
    border: none;
    border-radius: 50px;
    color: white;
    font-weight: 400;
    font-size: 1.2rem;
    margin-top: 10px;
    width:100%;
    letter-spacing: .11rem;
    outline:none;
}

.button:hover
{
	transform: scale(1.05) translateY(-3px);
    box-shadow: 3px 3px 6px #38373785;
}

@media only screen and (max-width: 1000px) {
    .card{
        flex-direction: column;
        width: auto;
      
    }

    .leftside{
        width: 100%;
        border-top-right-radius: 0;
        border-bottom-left-radius: 0;
      border-top-right-radius:0;
      border-radius:0;
    }

    .rightside{
        width:auto;
        border-bottom-left-radius: 1.5rem;
        padding:0.5rem 3rem 3rem 2rem;
      border-radius:0;
    }
}
</style>
<body>
	<nav>
		<div class="logo">
			<img src="WhatsApp Image 2022-10-23 at 01.04.27.jpeg" alt="Logo">
		</div>
		<input type="checkbox" id="click"> <label for="click"
			class="menu-btn"> <i class="fas fa-bars"></i>
		</label>
		<ul>
			<li><a href="Index.jsp">Home</a></li>
			<li><a href="Flights.jsp">Flights</a></li>
			<li><a class="active" href="Login.jsp">Logout</a></li>
		</ul>
	</nav>


	<div class="mainscreen">
		<!-- <img src="https://image.freepik.com/free-vector/purple-background-with-neon-frame_52683-34124.jpg"  class="bgimg " alt="">-->
		<div class="card">
			<div class="leftside">
				<img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRRPC6PmMHP2Lm5rtCpvepFr6oyL1Cw3T_Tw&usqp=CAU"
					class="product" alt="Shoes" />
			</div>
			<div class="rightside">
				<form action="Booking.jsp">
					<h1>CheckOut</h1>
					<h2>Payment Information</h2>
					<p>Cardholder Name</p>
					<input type="text" class="inputbox" name="name" required />
					<p>Card Number</p>
					<input type="number" class="inputbox" name="card_number"
						id="card_number" required />

					<p>Card Type</p>
					<select class="inputbox" name="card_type" id="card_type" required>
						<option value="">--Select a Card Type--</option>
						<option value="Visa">Visa</option>
						<option value="RuPay">RuPay</option>
						<option value="MasterCard">MasterCard</option>
					</select>
					<div class="expcvv">

						<p class="expcvv_text">Expiry</p>
						<input type="date" class="inputbox" name="exp_date" id="exp_date"
							required />

						<p class="expcvv_text2">CVV</p>
						<input type="password" class="inputbox" name="cvv" id="cvv"
							required />
					</div>
					<p></p>
					<button type="submit" class="button">CheckOut</button>
				</form>
			</div>
		</div>
	</div>


</body>
</html>