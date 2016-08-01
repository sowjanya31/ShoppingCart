<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>
<body>
<h1><center>Hand Bag Hunting</center></h1>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="view">Home</a></li>
         <!-- <li><a href="about.jsp"></a></li> --> 
        <li><a href="adminHome">Admin</a></li>
        <li><a href="user">User</a></li>
        <li><a href="contact"></a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <!-- <li><a  href="login.jsp"><span class="glyphicon glyphicon-log-in"></span>LOGIN </a></li> --> 
        <li><a  href="views/register.jsp"><span class="glyphicon glyphicon-user"></span>SIGNUP</a></li>
         <!-- <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li> -->
       </ul>
    </div>
  </div>
  </nav>


<h4><center>Please login with your credentials</center></h4>  <br>

	${message}
	<form:form action="isValidUser" method="post">
		<table align="center">
			<tr>
				<td>User Name:</td>
				<td><input type="text" name="name" required="true"></td>
			</tr>

			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" required="true" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Login"></td>
			</tr>

		</table>



	</form:form>


</body>
</html>