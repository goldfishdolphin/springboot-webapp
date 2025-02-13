<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<link href="webjars/bootstrap/5.3.0/css/bootstrap.min.css"
	rel="stylesheet">
<title>New Task</title>
</head>
<body>
	<div class="container">
		<h1>Add details of a new task!</h1>
		<form:form method="post" modelAttribute="todo">

		<fieldset class="mb-3">
			<form:label path="description">Description</form:label>
 			<form:input type="text" path="description"
					required="required" />
				<form:errors path="description" cssClass="text-warning" />
		</fieldset>

		<fieldset class="mb-3">
			<form:label path="targetDate">Target Date</form:label>
		  	<form:input type="text" path="targetDate"
					required="required" />
			<form:errors path="targetDate" cssClass="text-warning" />
		</fieldset>
		
		<form:input type="hidden" path="id" />
		<form:input type="hidden" path="done" />
		<input class="btn btn-success" type="submit"/>
		
		</form:form>


		<script src="webjars/bootstrap/5.3.0/js/bootstrap.min.js"></script>
		<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
	</div>
</body>
</html>