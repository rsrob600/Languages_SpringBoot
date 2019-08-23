<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
	<title>Edit Language Details</title>

</head>
<body>

	<section>
	
		<div class="container">
		
			<div class="d-flex justify-content-center align-items-center">
				<div class="col-md-4 text-center"><a href="/delete/${languages.id}">Delete</a> | <a href="/">Dashboard</a></div>
			</div>
	
			<div class="d-flex justify-content-center align-items-center container">
				<form:form action="/update/${languages.id}" method="post" modelAttribute="languages">
				<input type="hidden" name="_method" value="put">
					<table class="table table-borderless table-responsive-md">
					
						<tr>
							<td><form:label path="name">Name</form:label></td>
			                <td><form:input path="name" /></td>
			                <td><form:errors path="name" /></td>
						</tr>
						<tr>
							<td><form:label path="creator">Creator</form:label></td>
			                <td><form:input path="creator" /></td>
			                <td><form:errors path="creator" /></td>
						</tr>
						<tr>
							<td><form:label path="version">Version</form:label></td>
			                <td><form:input path="version" /></td>
			                <td><form:errors path="version" /></td>
						</tr>
						<tr>
							<td><input id="singlebutton" class="btn-md btn-primary" type="submit" value="Submit"/></td>
						</tr>
					</table>
				</form:form> 
			</div>
		</div>
		
	</section>




	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


</body>
</html>