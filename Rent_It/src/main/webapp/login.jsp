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
<body style="background-color:#1c87c9;">
    <form class="container" action="showAll" align="center" method="post">
       <div>
       <h1>Admin Login</h1>
            <b>Enter PIN</b>
			<input type="text" placeholder="Name"
					name="pin" required><br>
					<br>
             <button onclick="myFunction1()" type="submit" class="button">Submit</button>
       </div>
    
    
    </form>
</body>
</html>