<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
  <style>
	table, th, td {
	  border: 3px solid black;
	  background-color:pink;
	}
	table.center {
	  margin-left: auto;
	  margin-right: auto;
	}
	th, td {
	  padding: 40px;
	}
  </style>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Database</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	  <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>" />
	  <script src="<c:url value="/resources/js/script.js"/>" ></script>
  </head>
  
  <body background-image: url('./resources/image/data.jpg')">
  <div class="container text-center bg-warning mt-1 card mx-auto" style="width:80%">
    <h1>Welcome!!</h1>
  </div>
  <div class="container  bg-success mt-1 card mx-auto mx-auto" style="width:80%">
  <div class="card-body">
  <h3 class="text-center text-white" style="text-transform:uppercase">Database</h3>
  <hr >
  <!--  
    <c:forEach var="item" items="${list}">
		<h2>${item }</h2>
		<hr>
	</c:forEach>
	-->
	<%-- <div class="text-center">
	<c:forEach var="item" items="${list}">
		<h2>${item.id } &nbsp &nbsp &nbsp &nbsp &nbsp ${item.product } &nbsp &nbsp &nbsp &nbsp &nbsp  ${item.description }  &nbsp &nbsp &nbsp &nbsp &nbsp ${item.price }</h2>
		<hr>
	</c:forEach>
	</div> --%>
	
	<div class="text-center mx-auto">
	<table style="width:1000px" class="table" >
	<thead class="thead-dark">
	  <tr>
	    <th>id</th>
	    <th>product</th>
	    <th>description</th>
	    <th>price</th>
	    <th>Action</th>
	  </tr>
	  </thead>
	  <c:forEach var="item" items="${list}">
	  <tr>
	    <td class="font-weight-bold " style="color: black">${item.id }</td>
	    <td style="color: blue">${item.product }</td>
	    <td style="color: blue">${item.description }</td>
	    <td class="font-weight-bold " style="color: red">&#8377;${item.price }</td>
	    <td >
	    	<a href="del/${item.id }"><i class="fa-solid fa-trash text-danger" style="font-size: 20px"></i></a>
	    	<a href="upd/${item.id }"><i class="fa-solid fa-pen-nib text-primary" style="font-size: 20px"></i></a>
</i></a>
	    </td>
	  </tr>
	  </c:forEach>
	</table>
	</div>
	
	<form action="home">
	<div class="container mx-auto text-center">
		<a href="/crudapp/showdel" class="btn btn-outline-light mt-5">Delete Data</a>
		<a href="/crudapp/showupdate" class="btn btn-outline-light mt-5">Update Data</a>
    	<button class="btn btn-outline-light mt-5" >Insert Data</button>
    </div>
    </form>
    <%-- <form action="showupdate">
	<div class="container ">
    	<button class="btn btn-outline-light mt-5" >Update Data</button>
    </div>
    </form>
    <form action="showdel">
	<div class="container">
    	<button class="btn btn-outline-light mt-5" >Delete Data</button>
    </div>
    </form> --%>
  </div>
  </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>