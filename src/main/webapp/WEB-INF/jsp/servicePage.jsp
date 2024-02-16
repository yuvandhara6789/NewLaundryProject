<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- <link rel="stylesheet" href="./adminpanel.css"> -->
<script src="https://kit.fontawesome.com/ae73087723.js"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Banner</title>
<style>

/* Mainbar */
.mainCont {
	width: 100%;
	padding: 24px 20px 20px 20px;
}

.mainCont .info-box {
	margin-top: 10px;
	display: grid;
	grid-template-columns: 1fr 1fr 1fr;
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

.bannarbtn {
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


 .MainTable {
            border-collapse: collapse;
            box-shadow: 0 5px 10px #e1e5ee;
            background-color: white;
            text-align: left;
            overflow: hidden;
            cursor: pointer;
        }

        .tableheading {
            box-shadow: 0 5px 10px #e1e5ee;
        }

        .tableheading th {
            padding: 1rem 2rem;
            text-transform: uppercase;
            letter-spacing: 0.1rem;
            font-size: 0.7rem;
            font-weight: 900;
        }

        .tableheading tr {
            width: 100%;
        }

        .tablebody td {
            padding: 1rem 1.8rem;
        }

        .sub {
            border-radius: 5px;
            background-color: lightgreen;
            padding: 0.2rem .2rem;
            text-align: center;
            color: white;
        }

        .amount {
            text-align: right;
        }

        .MainTable tr:nth-of-type(even) {
            background-color: #f4f6fb;
        }

        .MainTable thead tr th {
            background-color: #36454F;
            color: white;
        }
</style>
</head>

<body>
	<jsp:include page="sidenav.jsp"></jsp:include>

	<!-- Navbar Start -->
	<section id="content">

		<jsp:include page="header.jsp"></jsp:include>



		<main class="mainCont" id="mainCont">
			<div id="userinfo">
				<form id="fileUploadForm">
					<h1 style="padding-left: 10px; text-align: center;"> Service
						Master</h1>
					<div class="info-box">

						<div class="textfield">
							<input class="inputfield" type="text" id="firstTitle"
								name="firstTitle" required> <span></span> <label
								class="inputlabels">add service</label>
						</div>
						
						<div
						style="margin-top: 20px;">
						<button class="bannarbtn" id="submitBtn">Submit</button>
					</div>

					</div>
					
				</form>
			</div>
			<div class="container-fluid pt-4 px-4">
				<div class="bg-secondary text-center rounded p-4">
					<div class="d-flex align-items-center justify-content-between mb-4">
						<h4 class="mb-0"></h4>

					</div>
					
					
					<table class="MainTable" id="staticTable" style="margin-top: 15px;">
                    <thead class="tableheading">
                        <tr>
                            <th style="width:100px">SR.NO</th>
                            <th style="width:900px">Service</th>
                           
                            
                            <th style="width:200px">Actions</th>
                        </tr>
                    </thead>
                    <tbody class="tablebody" id="transactionTableBody">


                    </tbody>
                </table>
					
					
				</div>
			</div>

		</main>




	</section>
	<!-- Navbar End -->

	
</body>

</html>