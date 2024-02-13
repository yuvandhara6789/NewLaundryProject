<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- <link rel="stylesheet" href="./adminpanel.css"> -->
<script src="https://kit.fontawesome.com/ae73087723.js"
	crossorigin="anonymous"></script>
<title>Admin Panel</title>
<style>

/* Mainbar */
.mainCont {
	width: 100%;
	padding: 24px 20px 20px 20px;
}

.mainCont .info-box {
	margin-top: 10px;
	/* background-color: aquamarine; */
	/* border: 1px solid black; */
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr;
	grid-gap: 10px;
	padding: 10px;
}

.textfield {
	position: relative;
	border-bottom: 2px solid #adabad;
	margin: 20px 0;
	width: 270px;
}

.inputfield {
	width: 270px;
	padding: 0 5px;
	height: 40px;
	font-size: 16px;
	border: none;
	background: none;
	outline: none;
}

.inputlabels {
	position: absolute;
	top: 50%;
	left: 5px;
	color: #adadad;
	transform: translateY(-50%);
	font-size: 16px;
	pointer-events: none;
	transition: .4s;
}

.textfield span::before {
	content: '';
	position: absolute;
	top: 40px;
	left: 0;
	width: 0%;
	height: 2px;
	background: #0cbaff;
	transition: .4s;
}

.inputfield:focus ~.inputlabels, .inputfield:valid ~.inputlabels {
	top: -5px;
	color: #0cbaff;
}

.inputfield:focus ~span::before, .inputfield:valid ~span::before {
	width: 100%;
}

.enquirybtn {
	width: 120px;
	height: 40px;
	background-color: #55d0ff;
	color: white;
	cursor: pointer;
	border: none;
	font-size: 17px;
	border-radius: 10px;
	margin-top: 10px;
}

/* Date style */
.datestyle:required:invalid::-webkit-datetime-edit {
	color: transparent;
}

.datestyle:focus::-webkit-datetime-edit {
	color: #000;
}

@media screen and (max-width:768px) {
	#content {
		position: relative;
		width: calc(100% - 60px);
		transition: all .3s ease;
	}
	.navcont .nav-link {
		display: none;
	}
	.mainCont .info-box {
		display: grid;
		grid-template-columns: 1fr;
	}
}
</style>
</head>

<body>
	<jsp:include page="sidenav.jsp"></jsp:include>

	<!-- Navbar Start -->
	<section id="content">

		<jsp:include page="header.jsp"></jsp:include>



		<!-- <main class="mainCont">
			<div id="userinfo">
				<h1 style="padding-left: 10px; text-decoration: underline">Enquiry
					Form</h1>
				<div style="margin-left: 10px; margin-top: 10px;">
					<input
						style="padding: .5rem .2rem; border: none; border-bottom: 2px solid #adadad; outline: none; font-size: 15px; font-weight: 600; letter-spacing: 1px; width: 80px; text-align: center;"
						type="text" value="2023010" name="" id="">
				</div>
				<div class="info-box">
					<div class="textfield">
						<input class="inputfield datestyle" type="date" required>
						<span></span> <label class="inputlabels">PO Date</label>
					</div>
					<div class="textfield">
						<input class="inputfield" type="text" required> <span></span>
						<label class="inputlabels">Client Name</label>
					</div>
					<div class="textfield">
						<input class="inputfield" type="text" required> <span></span>
						<label class="inputlabels">Mobile No</label>
					</div>
					<div class="textfield">
						<input class="inputfield" type="text" required> <span></span>
						<label class="inputlabels">Email</label>
					</div>
					<div class="textfield">
						<input class="inputfield" type="text" required> <span></span>
						<label class="inputlabels">Designation</label>
					</div>
					<div class="textfield">
						<input class="inputfield" type="text" required> <span></span>
						<label class="inputlabels">Contact Person</label>
					</div>
					<div class="textfield">
						<select name="cars" id="cars" class="inputfield">
							<option value="" style="color: adabad;">Select Mode</option>
							<option value="Whatsapp">Whatsup</option>
							<option value="email">Email</option>
							<option value="telephone">Telephone</option>
						</select> <span></span> <label class="inputlabels">Enquiry Through</label>
					</div>
					<div class="textfield">
						<input class="inputfield" type="text" required> <span></span>
						<label class="inputlabels">Enquiry Regarding</label>
					</div>
					<div class="textfield">
						<textarea class="inputfield" required></textarea>
						<label class="inputlabels" style="padding-bottom: 20px;">Address</label>
					</div>
					<div class="textfield">
						<textarea class="inputfield" required></textarea>
						<label class="inputlabels" style="padding-bottom: 20px;">Remark</label>
					</div>
				</div>
				<div
					style="margin-top: 20px; display: flex; align-items: center; justify-content: center;">
					<button class="enquirybtn">Submit</button>
				</div>
			</div>

		</main> -->




	</section>
	<!-- Navbar End -->

	<script src="js/adminscript.js"></script>
</body>

</html>