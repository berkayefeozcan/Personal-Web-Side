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
<title>Admin Page</title>
</head>
<body>
	<%
		if (session.getAttribute("userName") == null) {
			response.sendRedirect("AdminLogin.jsp");
		}
	%>
	<nav
		class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top border-bottom">
	<div class="container">
		<a class="navbar-brand" href="HomePage.jsp">Berkay Efe Özcan </a>

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse justify-content-end"
			id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item "><a class="nav-link" href="HomePage.jsp">Home</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="Blog.jsp">Blog</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="AboutMe.jsp">About
						Me</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> Dropdown link </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a> <a
							class="dropdown-item" href="#">Something else here</a>
					</div></li>
			</ul>
		</div>
	</div>
	</nav>

	<header>
	<div class="container  ">
		<div class="row">
			<div class="col-8 my-3  ">
				<h1 class="shadow "><%=session.getAttribute("userName")%>
					, Welcome admin page
				</h1>
			</div>
			<div class="col-1 my-3">

				<form action="Logout" >
					<input type="submit" value="Logout">
				</form>
			</div>
			<div class="col-2 my-3 ml-3">
				<a href="AddNewPost.jsp?author=<%=session.getAttribute("userName")%>" 
					class="btn btn-primary btn-sm  "
					role="button" aria-pressed="true">Add a new post</a>

			</div>

		</div>



	</div>

	</header>


	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/blog?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
		user="root" password="" />
	<sql:query dataSource="${snapshot}" var="result">
         SELECT * FROM `articles` ORDER BY created_date DESC;
      </sql:query>

	<main role="main" class="container">
	<div class="container text-center">
		<c:forEach var="row" items="${result.rows}">
			<div class="card mb-4 my-3">
				<img class="card-img-top img-fluid img-thumbnail " alt=""
					src=${row.image_source}>
				<div class="card-body">
					<h4 class="card-title border-bottom ">${row.title}</h4>
					<h6 class="card-subtitle mb-2 text-muted">Read Minute:
						${row.read_min}</h6>


					<p class="card-text text-justify content">${row.content}</p>
					<a href="EditPost?pid=${row.id}">edit this post</a>
					<a class="text-danger"href="DeleteArticle?a_id=${row.id}">delete this post</a>
				</div>
				<div class="card-footer text-muted">
					posted on ${row.created_date} <br> author : ${row.author}
				</div>
			</div>
		</c:forEach>



	</div>

	</main>
	<footer
		style="background-color: rgba(32,32,32, 0.3); margin-top:50px; "
		class="footer">
	<div class="container text-center">
		<span class="text-muted">Berkay Efe Özcan © 2020. All Rights
			Reserved.</span>
	</div>
	</footer>


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