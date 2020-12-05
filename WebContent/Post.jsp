<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
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
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/blog?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
		user="root" password="" />
	<sql:query dataSource="${snapshot}" var="result">
         SELECT * from articles where id  =  <%=request.getParameter("pid")%>;
      </sql:query>


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
				<li class="nav-item "><a class="nav-link" href="HomePage.jsp">Home</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="Blog.jsp">Blog</a>
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

	</header>




	<main>

	<div class="container">
		<div class="row">

			<div class="col-md-8 ">
				<c:forEach var="row" items="${result.rows}">
					<div class="card mb-4 my-3">
					<div class="card-header">posted on ${row.created_date}  </div>
						<img class="card-img-top img-fluid img-thumbnail" alt=""
							src=${row.image_source}>
						<div class="card-body">
							<h4 class="card-title border-bottom ">${row.title}</h4>

							<p class="card-text text-justify">${row.content}</p>
						</div>
						<div class="card-footer text-muted">
							 author : ${row.author}
							 <br> <a href="#">category</a>,<a href="#">category</a>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="col-md-4">

				<div class="card mb-4">
					<div class="card-header">Search</div>
					<div class="card-body">
						<div class="input-group">
							<input type="text" class="form-control " id="searchInput"
								placeholder="Search for..."> <span
								class="input-group-btn">
								<button onclick="redirect()" type="button" class="btn btn-secondary">Go!</button>
							</span>
						</div>
					</div>
				</div>



				<div class="card mb-4">
					<div class="card-header">Categories</div>
					<div class="card-body">
						<div class="row">
							<div class="col">
								<ul class="list-unstyled">
									<li><a href="CategorySearchResult.jsp?c_id=1&c_name=category1"> category 1 </a></li>
									<li><a href="CategorySearchResult.jsp?c_id=2&c_name=category2" > category 2 </a></li>
									<li><a href="CategorySearchResult.jsp?c_id=3&c_name=category3"> category 3 </a></li>
								</ul>
							</div>
							<div class="col">
								<ul class="list-unstyled">
									<li><a href="CategorySearchResult.jsp?c_id=4&c_name=category4"> category 4 </a></li>
									<li><a href="CategorySearchResult.jsp?c_id=5&c_name=category5"> category 5 </a></li>
									<li><a href="CategorySearchResult.jsp?c_id=6&c_name=category6"> category 6 </a></li>
								</ul>
							</div>
							<div class="col">
								<ul class="list-unstyled">
									<li><a href="CategorySearchResult.jsp?c_id=7&c_name=category7"> category 7 </a></li>
									<li><a href="CategorySearchResult.jsp?c_id=8&c_name=category8"> category 8 </a></li>
									<li><a href="CategorySearchResult.jsp?c_id=9&c_name=category9"> category 9 </a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>


			</div>


		</div>
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

	<script>
		function redirect() {
			var word = document.getElementById("searchInput").value;
			if (word.length !== 0 ){
				return location.replace("/webProject/SearchResult.jsp?word="
						+ word);
			}
			
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
</body>
</html>