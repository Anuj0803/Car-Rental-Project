<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
    .container {
			position: absolute;
			left: 500px;
			top: 100px;
			margin: 20px;
			max-width: 300px;
			padding: 16px;
		}
		div {
  background-color: white;
  width: 300px;
  border: 7px solid grey;
  padding: 50px;
  margin: 20px;
}
</style>
<body>
<form class="container" action="showAll" align="center">
   <div>
   <h1>Car Status Tracker</h1>
      Car Number=  ${CarNumber} , <br>
    Car Status = <mark>${Status}</mark> , <br> 
    Reason =${Reason}<br>
    Car Photo =<img src="imagedata/${CarNumber}.jpg" width="300" height="200"></td>
    </div>
    </form>
</body>
</html>