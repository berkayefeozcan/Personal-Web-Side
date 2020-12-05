<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Post</title>
</head>
<body>
	<%
		if (session.getAttribute("userName") == null) {
			response.sendRedirect("AdminLogin.jsp");
		}
	%>
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/blog?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
		user="root" password="" />
	<sql:query dataSource="${snapshot}" var="result">
         SELECT * from articles where id= <%=request.getAttribute("pid")%>;
      </sql:query>
      
	<c:forEach var="row" items="${result.rows}">
		<div class="container">
			<form action="UpdatePost">
			<div class="form-group">
					<label for="id">Id</label> 
					<input type="text"
						class="form-control" id="id" name="id" value ="${row.id}" readonly>
				</div>
				<div class="form-group">
					<label for="author-id">Post Author</label> 
					<input type="text"
						class="form-control" id="author-id" name="author" value ="${row.author}">
				</div>
				<div class="form-group">
					<label for="title-id">Post Title</label> <input type="text"
						class="form-control" id="title-id" name="title"  value ="${row.title}">
				</div>
				<div class="form-group">
					<label for="content-id">Post Content</label>
					<textarea class="form-control" id="content-id" rows="12"
						placeholder="type content here" name="content">${row.content}</textarea>
				</div>
				<div class="form-group">
					<label for="readMin">Read Min</label> <select class="form-control"
						id="readMin" name="rMin">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
						<option>9</option>
						<option>10</option>
					</select>
				</div>
				<div class="form-group">
					<label for="image-source-id">Header Image Source</label> <input
						type="text" class="form-control" id="image-source-id"
						name="image_source" value ="${row.image_source}">
				</div>
				<button type="submit" class="btn btn-primary">Update This Post !</button>
			</form>
		</div>
	</c:forEach>


	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
		integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
		crossorigin="anonymous"></script>
	<script src="contentShorther.js" type="text/javascript"></script>
</body>
</html>