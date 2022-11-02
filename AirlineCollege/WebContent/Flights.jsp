<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Flights</title>
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

/* Booking Window */
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

body {
	background:
		url('https://images.unsplash.com/photo-1553603227-2358aabe821e?ixlib=rb-1.2.1&ixid=eyJhcHB')
		no-repeat;
	background-size: cover;
	font-family: 'Lato', sans-serif;
}

main {
	margin: auto;
	width: 90%;
	max-width: 1150px;
}

#booking {
	max-width: 800px;
	background: rgb(255, 255, 255);
	background: linear-gradient(180deg, rgba(255, 255, 255, 1) 0%,
		rgba(255, 255, 255, .2) 100%);
	border-radius: 6px 6px 0 0;
	margin: auto;
}

header {
	padding: 2em;
}

#formSection {
	background: #fff;
	margin: 1em auto;
	padding: 1.5625em;
	border-radius: 6px;
	box-shadow: 0px 0px 10px -5px rgba(0, 0, 0, 0.4);
}

.form-group {
	margin-bottom: 20px;
}

#flightBook .form-control { /* trip duration radio buttons  */
	background-color: #fff;
	height: 60px;
	padding: 24px 15px 0;
	color: #191a1e;
	border: 2px solid #dfe5e9;
	font-family: 'Lato', sans-serif;
	font-size: 16px;
	font-weight: 700;
	border-radius: 4px;
	display: block;
	width: 100%;
}

input:focus, select:focus {
	outline: solid 2px #4fa3e3;
	box-shadow: 0 0 3px #4fa3e3;
}

#flightBook .form-control::-webkit-input-placeholder {
	color: #dfe5e9;
}

#flightBook .form-control:-ms-input-placeholder {
	color: #dfe5e9;
}

#flightBook .form-control::placeholder {
	color: #dfe5e9;
}

.flightBook .form-control:focus {
	background: #f9fafb;
}

#flightBook .form-label {
	font-weight: 700;
	text-transform: uppercase;
	line-height: 24px;
	height: 24px;
	font-size: 12px;
	color: #98c9ee;
}

#flightBook .submit-btn {
	color: #fff;
	cursor: pointer;
	background-color: #4fa3e3;
	font-weight: 400;
	height: 65px;
	font-size: 18px;
	border: none;
	width: 100%;
	border-radius: 4px;
	text-transform: uppercase
}

#cta {
	margin-top: 45px;
}

#cta h1 {
	font-size: 2.5em;
	color: #4fa3e3;
	font-weight: 400;
}

#cta p {
	font-size: 1.275em;
	color: #191a1e;
}

/* mid screen layout */
@media screen and (min-width: 430px) {
	#flightBook #tripType label+label {
		margin-left: 15px;
	}
	#flightBook #tripType label {
		display: inline-block;
		margin-bottom: 0;
	}
	#placeDate, #details {
		display: grid;
		grid-template-columns: 48.5% 48.5%;
		grid-column-gap: 3%;
	}
}
/* large screen layout */
@media screen and (min-width: 960px) {
	#booking {
		background: linear-gradient(180deg, rgba(255, 255, 255, 1) 0%,
			rgba(255, 255, 255, .4) 100%);
		border-radius: 6px 0 0 6px;
		display: grid;
		grid-template-columns: 40% 60%;
		margin: 20% auto;
		max-width: 100%;
	}
	#cta {
		margin-top: 0;
		margin-right: 1.5em;
	}
	#formSection {
		margin: 0;
	}
	#details {
		display: grid;
		grid-template-columns: 28% 28% 38%;
		grid-column-gap: 3%;
	}
}

.form-group {
	position: relative;
}

/* labels inside the box */
#flightBook .form-label {
	position: absolute;
	top: 6px;
	left: 20px;
}

/* --- CUSTOM RADIO BUTTONS --- */
/* hide the original radio buttons */
#formSection #tripType input {
	position: absolute;
	margin-left: -9999px;
	visibility: hidden;
}

/* buttons stack */
#flightBook #tripType label {
	display: block;
	margin-bottom: .5em;
	position: relative;
	padding-top: 4px;
	padding-left: 30px;
	font-weight: 700;
	color: #191a1e;
}

#flightBook #tripType input+span {
	position: absolute;
	left: 2px;
	top: 4px;
	width: 20px;
	height: 20px;
	background: #fff;
	border: 2px solid #dfe5e9;
	border-radius: 50%;
}

#flightBook #tripType input+span:after {
	content: '';
	position: absolute;
	top: 50%;
	left: 50%;
	width: 0px;
	height: 0px;
	border-radius: 50%;
	background-color: #4fa3e3;
	transform: translate(-50%, -50%);
	transition: 0.2s all;
}

#flightBook #tripType input:not(:checked)+span:after {
	opacity: 0;
}

#flightBook #tripType input:checked+span:after {
	opacity: 1;
	width: 10px;
	height: 10px;
}

@media screen and (min-width: 430px) {
	/* #flightBook #tripType label+label { 
        margin-left: 15px;
    } */
	#flightBook #tripType label {
		display: inline-block;
		margin-bottom: 0;
	}
}

/* hide the default select arrows and browser renderings */
#flightBook select.form-control {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
}

/* remove default select arrows in FF*/
select {
	text-indent: 0.01px;
	text-overflow: '';
}

#flightBook select.form-control+.select-arrow {
	position: absolute;
	right: 6px;
	bottom: 6px;
	width: 32px;
	line-height: 32px;
	height: 32px;
	text-align: center;
	pointer-events: none;
	color: #dfe5e9;
	font-size: .875em;
}

/* position and style the calendar icon */
i.fas.fa-calendar-alt {
	position: absolute;
	top: 22px;
	right: 10px;
	font-size: 1.4em;
	color: #dfe5e9;
	pointer-events: none;
}

input:enabled:read-write:-webkit-any(:focus, :hover)::-webkit-inner-spin-button
	{
	display: none;
}

[type="date"]::-webkit-calendar-picker-indicator {
	opacity: 0;
	width: 50px;
	height: 50px;
	position: absolute;
	right: 0;
	top: 0;
	z-index: 10;
}

[type="date"]::-webkit-calendar-picker-indicator:hover {
	background-color: rgba(0, 0, 0, 0);
	cursor: pointer;
}

/* button for stepper */
button.plus, button.minus {
	border: solid 2px #dfe5e9;
	background-color: #fff;
	padding: .5em;
	cursor: pointer;
	height: 32px;
}

button.minus {
	border-right-style: none;
	border-radius: 6px 0 0 6px;
}

button.plus {
	border-left-style: none;
	border-radius: 0 6px 6px 0;
}

button.plus i, button.minus i {
	font-size: 1.5em;
	color: #4fa3e3;
}

button:focus {
	outline: none;
}

input.stepper-control {
	border: solid 2px #dfe5e9;
	height: 32px;
	width: 50px;
	padding: .5em;
	text-align: center;
	font-size: 1em;
}

label.stepper-label {
	font-weight: 700;
	text-transform: uppercase;
	line-height: 24px;
	height: 24px;
	font-size: 12px;
	color: #98c9ee;
}

/* remove the default up/down arrows from webkit */
input[type=number]::-webkit-outer-spin-button, input[type=number]::-webkit-inner-spin-button
	{
	margin: 0;
}

/* fix for Safari, otherwise stepper component is not on 1 line */
.stepper {
	display: flex;
	width: 110px;
}

#details {
	display: block;
}

.form-group.selectNum {
	display: inline-block;
	margin-right: 1em;
}

.travelClass {
	width: 48.5%;
}

@media screen and (min-width: 600px) {
	#booking {
		max-width: 850px;
	}
	#details {
		display: grid;
		grid-template-columns: 24.25% 24.25% 48.5%;
		grid-column-gap: 3%;
	}
	.travelClass {
		width: 95%;
	}
}

@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap')
	;

body {
	line-height: 1.5;
	font-family: 'Poppins', sans-serif;
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

.container {
	max-width: 1170px;
	margin: auto;
}

.row {
	display: flex;
	flex-wrap: wrap;
}

ul {
	list-style: none;
}

.footer {
	background-color: #24262b;
	padding: 70px 0;
}

.footer-col {
	width: 25%;
	padding: 0 15px;
}

.footer-col h4 {
	font-size: 18px;
	color: #ffffff;
	text-transform: capitalize;
	margin-bottom: 35px;
	font-weight: 500;
	position: relative;
}

.footer-col h4::before {
	content: '';
	position: absolute;
	left: 0;
	bottom: -10px;
	background-color: #e91e63;
	height: 2px;
	box-sizing: border-box;
	width: 50px;
}

.footer-col ul li:not(:last-child) {
	margin-bottom: 10px;
}

.footer-col ul li a {
	font-size: 16px;
	text-transform: capitalize;
	color: #ffffff;
	text-decoration: none;
	font-weight: 300;
	color: #bbbbbb;
	display: block;
	transition: all 0.3s ease;
}

.footer-col ul li a:hover {
	color: #ffffff;
	padding-left: 8px;
}

.footer-col .social-links a {
	display: inline-block;
	height: 40px;
	width: 40px;
	background-color: rgba(255, 255, 255, 0.2);
	margin: 0 10px 10px 0;
	text-align: center;
	line-height: 40px;
	border-radius: 50%;
	color: #ffffff;
	transition: all 0.5s ease;
}

.footer-col .social-links a:hover {
	color: #24262b;
	background-color: #ffffff;
}

/*responsive*/
@media ( max-width : 767px) {
	.footer-col {
		width: 50%;
		margin-bottom: 30px;
	}
}

@media ( max-width : 574px) {
	.footer-col {
		width: 100%;
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
			<li><a class="active" href="Flights.jsp">Flights</a></li>
			<li><a href="Login.jsp">Login</a></li>
		</ul>
	</nav>

	<!-- Booking Window -->
	<main>
		<section id="booking">
			<article id="cta">
				<header>
					<h1>Book your flight today</h1>
					<p>Anytime you visit the islands it is life changing in some
						way. Breathtaking scenery, friendly faces and the aloha spirit —
						come for a visit, you won't regret it.</p>
				</header>
			</article>

			<article id="formSection">
				<form action="Login.jsp" id="flightBook">

					<div id="tripType" class="form-group">
						<label for="roundTrip"> <input type="radio" id="roundTrip"
							name="flight-type"> <!-- span tag to make the buttons customize  -->
							<span></span>Roundtrip
						</label> <label for="oneWay"> <input type="radio" id="oneWay"
							name="flight-type"> <span></span>One way
						</label> <label for="multiCity"> <input type="radio"
							id="multiCity" name="flight-type"> <span></span>Multi-City
						</label>
					</div>

					<div id="placeDate">
						<div class="form-group">
							<label class="form-label" for="flyingFrom">From</label> <input
								class="form-control" id="flyingFrom" type="text"
								placeholder="City or airport">
						</div>

						<div class="form-group">
							<label class="form-label" for="flyingTo">To</label> <input
								class="form-control" id="flyingTo" type="text"
								placeholder="City or airport">
						</div>

						<div class="form-group">
							<label class="form-label" for="departing">Departing date</label>
							<input class="form-control" id="departing" type="date" required>
							<i class="fas fa-calendar-alt"></i>
						</div>

						<div class="form-group">
							<label class="form-label" for="returning">Returning date</label>
							<input class="form-control" id="returning" type="date"> <i
								class="fas fa-calendar-alt"></i>
						</div>
					</div>
					<!-- end details -->

					<h3>Passengers</h3>
					<div id="details">
						<!--passengers -->
						<div class="form-group selectNum">
							<label class="stepper-label" for="numOfAdults">Adults
								(18+)</label>
							<div class="stepper">
								<button class="minus">
									<i class="fas fa-minus"></i>
								</button>
								<input class="stepper-control" id="numOfAdults" type="number"
									value="0">
								<button class="plus">
									<i class="fas fa-plus"></i>
								</button>
							</div>
						</div>

						<div class="form-group selectNum">
							<label class="stepper-label" for="numOfKids">Child(0-17)</label>
							<div class="stepper">
								<button class="minus" id="minus">
									<i class="fas fa-minus"></i>
								</button>
								<input class="stepper-control" id="numOfKids" type="number"
									value="0" max="10">
								<button class="plus">
									<i class="fas fa-plus"></i>
								</button>
							</div>
						</div>


						<div class="form-group travelClass">
							<label class="form-label" for="travClass">Travel class</label> <select
								class="form-control" id="travClass">
								<option>Economy class</option>
								<option>Business class</option>
								<option>First class</option>
							</select> <i class="fa fa-arrow-down select-arrow" aria-hidden="true"></i>
						</div>
					</div>

					<div class="form-btn">
						<button class="submit-btn">Show flights</button>
					</div>

				</form>
			</article>
		</section>
	</main>

	<!-- footer -->

	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="footer-col">
					<h4>Our Services</h4>
					<ul>
						<li><a href="#">Home</a></li>
						<li><a href="#">Flight</a></li>
						<li><a href="#">Feedback</a></li>
						<li><a href="#">Contact Us</a></li>
					</ul>
				</div>
				<div class="footer-col">
					<h4>get help</h4>
					<ul>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">shipping</a></li>
						<li><a href="#">returns</a></li>
						<li><a href="#">order status</a></li>
						<li><a href="#">payment options</a></li>
					</ul>
				</div>
				<div class="footer-col">
					<h4>Facilities</h4>
					<ul>
						<li><a href="#">Aeroplanes</a></li>
						<li><a href="#">Helicopters</a></li>
						<li><a href="#">Private Jet</a></li>
					</ul>
				</div>
				<div class="footer-col">
					<h4>Follow Us</h4>
					<div class="social-links">
						<a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i
							class="fab fa-twitter"></i></a> <a href="#"><i
							class="fab fa-instagram"></i></a> <a href="#"><i
							class="fab fa-linkedin-in"></i></a>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<script>
		$('.plus').click(function() {
			let counter = $(this).siblings().filter('input').val();
			counter++;
			$(this).siblings().filter('input').val(counter);
			return false;
		});

		$('.minus').click(function() {
			let counter = $(this).siblings().filter('input').val();
			if (counter > 0) {
				counter--;
				$(this).siblings().filter('input').val(counter);
			}
			return false;
		});
	</script>
</body>

</html>