
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<th>id</th>
				<th>Description</th>
				<th>Target Date</th>
				<th>Is Done?</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.id}</td>
					<td>${todo.description}</td>
					<td>${todo.targetDate }</td>
					<td>${todo.done}</td>

				</tr>
			</c:forEach>

		</tbody>
	</table>
	<script src="webjars/bootstrap/5.3.0/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
	</div>
</body>
</html>
