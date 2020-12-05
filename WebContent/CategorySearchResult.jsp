<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no"
	charset="UTF-8">
<title>Personal Web Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
</head>

<body>

	<nav
		class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top border-bottom">
	<div class="container">
		<a class="navbar-brand" href="HomePage.jsp">Berkay Efe Özcan</a>

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse justify-content-end"
			id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item "><a class="nav-link"
					href="HomePage.jsp">Home</a></li>
				<li class="nav-item "><a class="nav-link" href="Blog.jsp">Blog</a>
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
	<div class="text-center">

		<h3 class="display-7">Search Results for '<%=request.getParameter("c_name")%>'</h3>

	</div>

	</header>

	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/blog?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
		user="root" password="" />
	<sql:query dataSource="${snapshot}" var="result">
        SELECT * FROM articles WHERE id IN (SELECT a_id FROM `category_article_relation` WHERE c_id= <%=request.getParameter("c_id")%>) ;
      </sql:query>

	<main role="main" class="container">
	<hr class="my-1">
	
	<p class="text-center" id="notFound"></p>
	<c:forEach var="row" items="${result.rows }">
		<div class="media" id ="resultId">
			<img style="width: 100px; heigth: 80px; margin-rigth: 10px;"
				src="${row.image_source }" class="mr-3" alt="...">
			<div class="media-body ">
				<h5 class="mt-0">${row.title}</h5>
				<c:set var="shortContent"
					value="${fn:substring(row.content,0,250) }..." />
				${shortContent}

			</div>
			<a style="margin-left: 10px;" class="btn btn-secondary btn-sm "
				href="Post.jsp?pid=${row.id}" role="button">Read More.</a>
		</div>
		<hr class="my-1">
	</c:forEach> </main>

	<footer
		style="background-color: rgba(32,32,32, 0.3); margin-top:50px; "
		class="footer">
	<div class="container text-center">
		<span class="text-muted">Berkay Efe Özcan © 2020. All Rights
			Reserved.</span>
	</div>
	</footer>
	<script>
		var results = document.getElementById("resultId");
		if (results === null) { // eger sayfada hic bir sey gozukmeyecekse nothing found yazdirir.
			
			document.getElementById("notFound").innerHTML = "Nothing found !";
		}
	</script>
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
