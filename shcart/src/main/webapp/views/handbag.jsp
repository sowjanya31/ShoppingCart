<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }

    .carousel-inner img {
      width: 100%; /* Set width to 100% */
      min-height: 200px;
    }

    /* Hide the carousel text when the screen is less than 600 pixels wide */
    @media (max-width: 600px) {
      .carousel-caption {
        display: none;
      }
    }
  </style>
</head>
 
<title></title>
</head>
<body>
<a href="view">HOME</a><br>
<div class="container-fluid text-center bg-grey">
  <h2>Hand Bags</h2><br>
  <h4></h4>
  <div class="row text-center">
    <div class="col-sm-4">
      <div class="thumbnail">
      <img src="<c:url value="/resources/images/handbag.jpg"/>" height="500" class="img-responsive"  alt=""/>
        
        <p><strong></strong></p>
        <p></p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="<c:url value="/resources/images/handbag1.PNG"/>" height="300"  class="img-responsive" alt=""/>
        <p><strong></strong></p>
        <p></p>
      </div>
    </div>
    
  </div>
</div>



</body>
</html>