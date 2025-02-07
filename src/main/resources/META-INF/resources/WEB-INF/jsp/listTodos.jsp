
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Todo page</title>
</head>
<body>
<p>Welcome ${name}</p>
	<h1>Your Todo Tasks:</h1>

<hr>
	
	<table>
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
</body>
</html>