<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<link href="webjars/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet" >
<title>Todo page</title>
</head>
<body>
<div class= "container">
<p>Welcome ${name}</p>
	<h1>Your Todo Tasks:</h1>


	
	<table class="table">
		<thead>
			<tr>
				<th>Description</th>
				<th>Target Date</th>
				<th>Is Done?</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.description}</td>
					<td>${todo.targetDate }</td>
					<td>${todo.done}</td>
					<td><a href="delete-todo?id=${todo.id}" class="btn btn-warning">Delete</a></td>
					<td><a href="update-todo?id=${todo.id}" class="btn btn-primary">Update</a></td>
					

				</tr>
			</c:forEach>

		</tbody>
	</table>
	<a href="add-todo" class="btn btn-success">Add Todo</a>
	<script src="webjars/bootstrap/5.3.0/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
	</div>
</body>
</html>
