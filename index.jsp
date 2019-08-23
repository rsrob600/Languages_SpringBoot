<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
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
	
	<title>Home | All Languages</title>

</head>
<body>
	
	<section>
		<div class="container">
			<div class="row">
				<table class="table table-hover table-dark">
				    <thead>
				        <tr>
				            <th scope="col">Name</th>
				            <th scope="col">Creator</th>
				            <th scope="col">Version</th>
				            <th scope="col">Action</th>
				        </tr>
				    </thead>
				    <tbody>
				        <c:forEach items="${lang}" var="l">
				        <tr>
				            <td scope="row"><a href="/show/${l.id}">${l.name}</a></td>
				            <td scope="row"><c:out value="${l.creator}"/></td>
				            <td scope="row"><c:out value="${l.version}"/></td>
				            <td scope="row"><a href="/delete/${l.id}">Delete</a> | <a href="/edit/${l.id}">Edit</a></td>
				        </tr>
				        </c:forEach>
				    </tbody>
				</table>
			</div>
		</div>
		
		<div class="d-flex justify-content-center align-items-center container">
		
			<form:form class="form-horizontal" action="/languages" method="post" modelAttribute="languages">
				
				<div class="container-fluid">
					<label for="name" class="col-sm-4 col-form-label"></label>
					<div class="col-sm-12">
						<form:input path="name" class="form-control" placeholder="Name"/>
						<form:errors path="name" />
					</div>
				</div>

				<div class="container-fluid">
					<label for=creator class="col-sm-4 col-form-label"></label>
					<div class="col-sm-12">
						<form:input path="creator" class="form-control" placeholder="Creator"/>
						<form:errors path="creator" />
					</div>
				</div>

				<div class="container-fluid">
					<label for=version class="col-sm-4 col-form-label"></label>
					<div class="col-sm-12">
						<form:input path="version" class="form-control" placeholder="Version"/>
						<form:errors path="version" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label" for="singlebutton"></label>
					<div class="col-sm-12 text-center">
						<input id="singlebutton" class="btn-md btn-primary" type="submit" value="Submit"/>
					</div>
				</div>
			</form:form>
		</div>
	</section>
		 
	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>