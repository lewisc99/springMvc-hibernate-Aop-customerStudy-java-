<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>Customer Form</title>
<!--  reference our style sheet -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>

<div class="container">
<div class="row">
<div class="col-lg-5">
<header>
<h2>CRM - Customer Relationship Manager</h2>
</header>
<h3>Save Customer</h3>
<form:form action="saveCustomer" modelAttribute="customer" method="POST">
<!-- need to associate this data with customer id -->
<form:hidden path="id" />

 <table>
 <tbody>
<tr>
        <td><label>first name: </label></td>
        <td><form:input path="firstName"  class="form-control"/></td>
      
    </tr>
  <tr>
 	<td><label>Last Name: </label></td>
	 <td><form:input path="lastName" class="form-control"/></td>
 </tr>
  <tr>
 	<td><label>Email: </label></td>
	 <td><form:input path="email" class="form-control"/></td>
 </tr>
 <tr>
 	<td><label></label>
 	<td><input type="submit" value="Save" class="btn btn-success"/>
 </tr>
 </tbody>
 </table>
 
 
 
</form:form>
<div class="md-3">
<p> <a href="${pageContext.request.contextPath}/customer/list">Back to list</a>
</div>

</div>
</div>
</div>




</body>
</html>