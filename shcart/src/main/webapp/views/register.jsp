<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head>
<script language="javascript"></script>
 <script src="validation.js"></script> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<title>Register User</title>
</head>
<body onload="">
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
        <li class="active"><a href="\shcart/index.jsp">Home</a></li>
        <!-- <li><a href="about.jsp"></a></li> -->
        <li><a href="adminHome"></a></li>
        <li><a href="user"></a></li>
        <li><a href="contact"></a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <!--  <li><a  href="login"><span class="glyphicon glyphicon-log-in"></span>LOGIN </a></li> -->
        <!-- <li><a  href="views/register.jsp"><span class="glyphicon glyphicon-user"></span>SIGNUP</a></li> -->
        <!-- <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
 -->      </ul>
    </div>
  </div>
  </nav>


	<h2><center>Please fill the details</center></h2>
	<c:url var="addAction" value="/register"></c:url>

	<form:form action="${addAction}" commandName="register" method="post"
		onSubmit="return formValidation();">
		<table align="center">
			<tr>
				<td>User ID:</td>
				<td><input type="text" id = "id" name="id" path="id" required="true"></td>
			</tr>
			<tr>
				<td>User Name:</td>
				<td><input type="text" id="name" name="name" path="name" required="true"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password"  id="password" name="password" 

path="password" required="true"></td>
			</tr>
			<tr>
				<td>Mobile No:</td>
				<td><input type="text" id="mobile" name="mobile" path="mobile" required="true"></td>
			</tr>

			<tr>
				<td>Email:</td>
				<td><input type="email" id="email" name="email" path="email" required="true"></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><input type="textarea" width="20" height="10"
					id="address" name="address" path="address" required="true"></td>
			</tr>


			<tr>
				<td><input type="submit" value="Register"></td>
				<td><c:if test="${empty register.name }">
						<input type="reset" value="<spring:message 

text="reset"/>" />
					</c:if>
			</tr>

		</table>

	</form:form>

</body>
</html>