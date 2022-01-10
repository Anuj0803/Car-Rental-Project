<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<meta name="viewport"
		content="width=device-width, initial-scale=1">
	<style>
		body {
			height: 100%;
			font-family: Arial, sans-serif;
		}
		
		* {
			box-sizing: border-box;
		}
		
		h1 {
			text-align:center;
			color:white;
			-webkit-text-stroke: 1px black;
		}
		
		/* styling background image */
		.bg-img {
			background-image: url(
"https://cbsnews1.cbsistatic.com/hub/i/2016/05/10/800d25c6-8c44-4fa8-bfa7-64354abdd234/istock000026114063full.jpg");
			min-height: 1000px;
			background-size: cover;
		}
	
		/* Styling the form container */
		.container {
			position: absolute;
			left: 750px;
			top: 0px;
			margin: 20px;
			max-width: 300px;
			padding: 16px;
		}
		.container1 {
			position: absolute;
			left: 1150px;
			top: 0px;
			margin: 20px;
			max-width: 300px;
			padding: 16px;
		}
		
		.container2 {
			position: absolute;
			left: 400px;
			top: 0px;
			margin: 20px;
			max-width: 300px;
			padding: 16px;
		}

		b {
			color: white;
			font-size:26px;
			-webkit-text-stroke: 1px black;
		}
	
		/* Full-width input */
		input[type=text],
		input[type=password] {
			width: 100%;
			padding: 15px;
			margin: 15px 0px;
			border: 2px solid green;
		}
		

	
		/* Styling the submit button */
		.button {
			background-color: green;
			color: white;
			padding: 16px 16px;
			border: none;
			cursor: pointer;
			width: 100%;
		}
		
		.button:hover {
			transform: scale(1.1);
			transition: transform 0.3s;
		}
	</style>
</head>

<body>
<script>

function myFunction1() {
	  alert("Details added successfully...Under review of admin for approval");
	}
</script>
	<div class="bg-img">
	<form action="admin" align="right"><button  type="submit">Admin</button></form>
		<form class="container" action="add" enctype="multipart/form-data" method="post">
		    <h1>Give on Rent</h1><br>
		    <b>Owner Name</b>
			<input type="text" placeholder="Name"
					name="Name" required>
					
			<b>Car Number</b>
			<input type="text" placeholder="Car Number"
					name="Car_Number" required>
					
			<b>Car Name</b>
			<input type="text" placeholder="Car Number"
					name="Car_Name" required>
					
			<b>Seats in Car</b>
			<input type="text" placeholder="Car Number"
					name="seats" required>
			
			<b>Aadhar Card Number</b>
			<input type="text" placeholder="Aadhar Number"
					name="Anumber" required>
					
			<b>Phone Number</b>
			<input type="text" placeholder="Phone Number"
					name="Owner_Phone" required>
           
           <b>Rent Price per Day</b>
			<input type="text" placeholder="Price"
					name="Price" required>
		   <b>Upload Car Photo</b> 
		    <input type="file" 
				  id="img" name="img" accept="*" >
			<button onclick="myFunction1()" type="submit" class="button">Submit</button>
		</form>
	</div>
	<div >
		<form class="container1" action="get">
		    <h1>Take on Rent</h1><br>
			<b>Name</b>
			<input type="text" placeholder="Name Please"
					name="Name" required>

			<b>Aadhar card Number</b>
			<input type="text" placeholder="Adhar Card Number"
					name="Adhar" required>
					
		    <b>Phone Number</b>
			<input type="text" placeholder="Phone"
					name="Phone" required>

			<button onclick="myFunction()" type="submit" class="button">Submit</button>
		</form>
	</div>
	<div>
	   <form class="container2" action="car">
		    <h1>Check Car Status</h1><br>
			<b>Enter Car Number</b>
			<input type="text" placeholder="Name Please"
					name="Numc" required>

			<button onclick="myFunction()" type="submit" class="button">Submit</button>
		</form>
	</div>
</body>

</html>
