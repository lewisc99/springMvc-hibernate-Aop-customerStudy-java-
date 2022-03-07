<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>List Customers</title>


<!--  reference our style sheet -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


</head>
<body>
<header>
	<div id="header">
	<h2>CRM - Customer Relationship Manager</h2></div>
</header>
<div class="container">
<div class="row">
<div class="col-md-5">

	<!--  put new buton: Add Customer -->
	<input type="button" value="Add Customer"
		onclick="window.location.href='showFormForAdd';return false;"
		class="btn btn-primary"/> 
		<br>
		<br>
		

	<!-- Add out html table here -->
	<table class="table table-hover table-striped">
	<thead class="table-dark">
	<tr class="table-dark">
		<th>First Name</th>
		<th>Last Name</th>
		<th>Email</th>
		<th>Action</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach var="tempCustomer" items="${customers}">
	<tr class="">
	
	<!-- construct an "Update" link with customer id -->
	<c:url var="updateLink" value="/customer/showFormForUpdate">
		<c:param name="CustomerId" value="${tempCustomer.id }" />
	</c:url>
	
	<td> ${tempCustomer.firstName }</td>
	<td> ${tempCustomer.lastName }</td>
	<td> ${tempCustomer.email }</td>
	<td>
	<!-- display the update link -->
		<a href="showFormForUpdate?id=${tempCustomer.id}">Update</a>
		| 
		<a href="delete?id=${tempCustomer.id}" 
		onclick="if (!(confirm('Are your sure you want to delete this customer?'))) return false">Delete</a>

	</td>
	</tr>
	</c:forEach>
	</tbody>
	</table>
</div>
</div>
</div>

 
</body>
</html>