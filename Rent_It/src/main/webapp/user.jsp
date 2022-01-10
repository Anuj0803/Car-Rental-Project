<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<html>
<body>
<style>
   .bg-img {
			background-image: url(
"");
			min-height: 1000px;
			background-size: cover;
		}
</style>
<div class="bg-img">
	<h2>List of Cars</h2>

	<table border="1">
		<tr>
			<th>Owner Name</th>
			<th>Car Number</th>
			<th>Car Name</th>
			<th>Seats in Car</th>
			<th>Aadhar Card Number</th>
			<th>Phone Number</th>
			<th>Rent Price per Day</th>
			<th>Car Photo</th>
		</tr>
		<c:forEach var="owner" items="${owners}">
			<tr>
				<td>${owner.name}</td>
				<td>${owner.car_Number}</td>
				<td>${owner.car_Name}</td>
				<td>${owner.seats}</td>
				<td>${owner.anumber}</td>
				<td>${owner.owner_Phone}</td>
				<td>${owner.price}/-</td>
				<td><img src="imagedata/${owner.car_Number}.jpg" width="300" height="200"></td>
		 
				
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>