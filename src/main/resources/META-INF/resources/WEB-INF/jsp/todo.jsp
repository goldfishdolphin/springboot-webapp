<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<title>New Task </title>
</head>
<body>
<div class="container">
<h1>Add details of a new task!</h1>

<form:form method="post" modelAttribute="todo">
Desscription: <form:input type="text" path="description" required="required"/>
<form:input type="hidden" path="id" />
<form:input type="hidden" path="done" />
<input type="submit">
</form:form>

</div>

</body>
</html>