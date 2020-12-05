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
				<li class="nav-item  "><a class="nav-link"
					href="HomePage.jsp">Home</a></li>
				<li class="nav-item "><a class="nav-link" href="Blog.jsp">Blog</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="AboutMe.jsp">About
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





	<main role="main" class="container">
	<div class="container">
		<table class="table table-bordered">

			<tbody>
				<tr>

					<td><img
						src="https://assets.phenompeople.com/CareerConnectResources/ACCOGLOBAL/tr_tr/desktop/assets/images/default_profile.png"
						alt="..." class="img-fluid"></td>
					<td>
						<ul>
							<h3>Berkay Efe</h3>
							<h6 class="text-muted">
								Computer Engineering student in Kocaeli University
								</h5>
								<li>Email : berkayefeozcan@gmail.com</li>
								<li><a href="#" target="_blank">My CV</a></li>
								<li><div class="container">
										<a href="https://github.com/berkayefeozcan"
											title="Go to my github profile" target="_blank"><svg
												class="octicon octicon-mark-github v-align-middle"
												height="20" viewBox="0 0 16 16" version="1.1" width="20"
												aria-hidden="true"> <path fill-rule="evenodd"
												d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z">
											</path></svg></a> <a
											href="https://www.linkedin.com/in/berkay-efe-%C3%B6zcan-3a5049171/"
											target="_blank"><svg aria-hidden="true"
												class="global-nav__logo" xmlns="http://www.w3.org/2000/svg"
												width="34" height="34" data-supported-dps="34x34"
												focusable="false"> <g transform="scale(.7083)"
												fill="none" fill-rule="evenodd"> <rect
												class="bug-text-color" fill="#ffffff" x="1" y="1" width="20"
												height="20" rx="4"></rect> <path
												d="M0 4.01A4.01 4.01 0 014.01 0h39.98A4.01 4.01 0 0148 4.01v39.98A4.01 4.01 0 0143.99 48H4.01A4.01 4.01 0 010 43.99V4.01zM19 18.3h6.5v3.266C26.437 19.688 28.838 18 32.445 18 39.359 18 41 21.738 41 28.597V41.3h-7V30.159c0-3.906-.937-6.109-3.32-6.109-3.305 0-4.68 2.375-4.68 6.109V41.3h-7v-23zM7 41h7V18H7v23zm8-30.5a4.5 4.5 0 11-9 0 4.5 4.5 0 019 0z"
												class="background" fill="currentColor"></path> </g> </svg> </a>
									</div></li>
						</ul>
					</td>

				</tr>

			</tbody>
		</table>
	</div>
	<div class="container">Lorem ipsum dolor sit amet consectetur
		adipisicing elit. Cumque ex accusantium cupiditate odit voluptas
		doloribus animi veniam ab repellendus, fuga quae vel. Laudantium, modi
		dolor id nemo necessitatibus atque consequuntur adipisci laborum sit
		ex totam impedit minus possimus minima at. Quidem neque numquam dolor
		cumque placeat iure tempora mollitia unde aperiam, ratione facere amet
		nobis qui assumenda repellat iste minima asperiores voluptate
		recusandae. Quod mollitia neque, tempore fugit modi, quasi facere
		ipsam reiciendis laudantium, sed alias numquam. Non vitae et nisi ex
		veritatis ducimus iste excepturi a accusamus consequatur tempore
		adipisci, nulla explicabo distinctio, aliquid voluptates laudantium
		cumque dolores? Dicta quo nobis, consequuntur, quasi obcaecati,
		laudantium facere illo temporibus ex minus ullam aut totam?
		Repudiandae ipsam facere accusantium sapiente ut numquam
		exercitationem alias animi, nam molestias. Earum repellendus iusto
		minus dolor accusamus nisi tenetur. Laboriosam, tempora eius, officia
		culpa quis perspiciatis quaerat laudantium totam cum enim et quas ex
		suscipit. Distinctio totam rem officiis nulla ipsam fugit veniam
		tempora eligendi, eum autem consequuntur consequatur culpa odio et?
		Velit corrupti architecto dolor iusto facilis consequatur labore
		repellat rem impedit delectus dignissimos, tempore atque, sequi et
		illum ipsum. Reiciendis corporis natus quasi omnis eligendi veritatis,
		praesentium odit nemo. Reprehenderit a obcaecati vitae aperiam, magni
		nostrum doloribus quo enim consectetur nihil fugiat pariatur esse sint
		temporibus ea optio suscipit eligendi hic sapiente provident quasi?
		Quae aperiam quos molestias, nam harum architecto qui! Nostrum eos
		doloremque velit at dicta pariatur reprehenderit maiores debitis
		aperiam provident minima officiis similique, consectetur itaque
		recusandae ipsa quae est sed doloribus! Totam dolorum ad error placeat
		quis nulla cumque consectetur autem temporibus cum, veniam dolorem,
		enim praesentium consequatur nobis ex vel earum perferendis laudantium
		optio explicabo quibusdam! Iure alias accusantium nisi assumenda et
		possimus modi impedit nam tenetur! Soluta explicabo dolore eveniet
		repellat sunt quas amet molestiae id. Neque nesciunt officia eum
		nostrum? Nemo, veniam voluptate necessitatibus similique quas adipisci
		blanditiis culpa qui obcaecati modi soluta tempora iure debitis
		placeat expedita consectetur saepe reprehenderit quaerat accusamus.
		Veniam velit nihil mollitia eligendi voluptatem suscipit praesentium
		officia dicta consectetur ut minima dignissimos distinctio a, eius
		reprehenderit illo error doloribus tempora modi nam deleniti? Ea
		dolores similique rerum consectetur, cupiditate quia, est qui omnis
		commodi eveniet molestias dignissimos. Tenetur laudantium aut maiores
		iste, sit non assumenda quae ipsa deserunt voluptatem autem corporis
		ut atque dolores commodi ad quod, cupiditate saepe cum delectus
		facilis error nulla velit. At architecto beatae quaerat sed ex esse
		expedita! Tenetur corrupti eligendi illo et quas, architecto excepturi
		aliquid fugiat eum asperiores, doloremque inventore similique qui quia
		ipsam. Eligendi harum eaque doloribus beatae qui assumenda
		perspiciatis et fuga tempore dolores odio, minus veniam? Id
		consequuntur corrupti doloremque dolorum aut harum eum cumque debitis!
		A quod ipsa et, voluptate adipisci enim eos repudiandae aperiam?
		Nostrum quis saepe eligendi rerum enim facilis doloremque
		reprehenderit laboriosam beatae deleniti asperiores praesentium,
		maiores at facere cumque quos molestias quo! Eligendi, atque. Qui
		vitae alias iste quas, nesciunt cumque possimus adipisci tempora,
		quaerat officiis eos. Necessitatibus corrupti quia odit deleniti eos
		deserunt assumenda omnis?</div>
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
