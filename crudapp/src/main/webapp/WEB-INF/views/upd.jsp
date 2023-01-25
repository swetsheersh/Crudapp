<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Update</title>
  </head>
  <body style="background-image: url('${pageContext.request.contextPath}/resources/image/data.jpg')">
  <div class="container text-center bg-warning mt-1 card mx-auto" style="width:80%">
    <h1>Welcome!! to Update Section</h1>
  </div>
  <div class="container text-center bg-info mt-1 card mx-auto" style="width:80%">
  <div class="card-body">
  <h3 class="text-center text-white" style="text-transform:uppercase">Database</h3>
  <hr >
    <form action="${pageContext.request.contextPath}/update" method="post">
    	<div class="form-group mt-5"> 
    		<label class="text-center text-white">Enter id :</label>
    		<input type="int"  placeholder="id"
    				class="form-control" name="id" id="id" value="${datas.id }"/>
    	</div>
    	<div class="form-group mt-5"> 
    		<label class="text-center text-white">Enter Product Name :</label>
    		<input type="text"  placeholder="Product"
    				class="form-control" name="product" id="product" value="${datas.product }"/>
    	</div>
    	<div class="form-group mt-5"> 
    		<label class="text-center text-white">Enter Product Details :</label>
    		<textarea type="text" name="description" placeholder="description"
    				class="form-control" id="description" row="3">${datas.description }</textarea>
    	</div>
    	<div class="form-group mt-5"> 
    		<label class="text-center text-white">Enter Product Price :</label>
    		<input type="int" name="price" placeholder="price"
    				class="form-control" id="price" value="${datas.price }"/>
    	</div>
    	<div class="container text-center">
    			<a href="${pageContext.request.contextPath}/" class="btn btn-outline-light mt-5">Back</a>
    			<button class="btn btn-outline-light mt-5">Update</button>
    	</div>
    </form>
  </div>
  </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>