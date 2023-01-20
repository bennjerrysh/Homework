<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<table class="table table-striped table-hover">
			
			<tr>
				<th>id</th>
				<th>date</th>
				<th>name</th>
				<th>party</th>
				<th>title</th>
			</tr>
			<c:forEach var="list" items="${list }">
				<tr>
					<td>${list.id }</td>
					<td>${list.date }</td>
					<td>${list.name }</td>
					<td>${list.party }</td>
					<td>${list.title }</td>
				</tr>
			</c:forEach>

			
		</table>
	</div>
</body>
</html>