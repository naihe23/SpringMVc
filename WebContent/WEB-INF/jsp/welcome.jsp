<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>PetClinic :: a Spring Framework demonstration</title>

<link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath() %>/resources/images/favicon.png">
<link rel="stylesheet"	href="<%=request.getContextPath() %>/webjars/bootstrap/3.3.6/css/bootstrap.min.css" />
<link href="<%=request.getContextPath() %>/resources/css/petclinic.css"	rel="stylesheet" />
</head>
<body>

	<nav class="navbar navbar-default" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="<%=request.getContextPath() %>"><span></span></a>
				<button type="button" class="navbar-toggle" data-toggle="collapse"	data-target="#main-navbar">
					<span class="sr-only">Toggle navigation</span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>				
			</div>
			<div class="navbar-collapse collapse" id="main-navbar">
				<ul class="nav navbar-nav navbar-right">
					<li class=""><a
						href="<%=request.getContextPath()%>" title="login">
							<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
							<span>Login</span>
					</a></li>
					<li class="active"><a href="<%=request.getContextPath()%>/welcome.html"
						title="home page"> <span class="glyphicon glyphicon-home"
							aria-hidden="true"></span> <span>Home</span>
					</a></li>
					<li class=""><a href="<%=request.getContextPath() %>/owners/find.html"
						title="find owners"> <span class="glyphicon glyphicon-search"
							aria-hidden="true"></span> <span>Find owners</span>
					</a></li>
					<li class=""><a href="<%=request.getContextPath() %>/vets.html"
						title="veterinarians"> <span
							class="glyphicon glyphicon-th-list" aria-hidden="true"></span> <span>Veterinarians</span>
					</a></li>

					<li class=""><a href="<%=request.getContextPath() %>/oups.html"
						title="trigger a RuntimeException to see how it is handled"> <span
							class="glyphicon glyphicon-warning-sign" aria-hidden="true"></span>
							<span>Error</span>
					</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid">
		<div class="container xd-container">
			<h2>Welcome, ${user.name}</h2>
			<p>This PetClinic application is built based on the original PetClinic sample application from SpringSource. The requirements of this application are documented in the tutorial that is bundled with the original Spring's PetClinic sample. We implemented all requirements listed in that document.</p>
			<p>&nbsp;</p>
			<div class="row">
				<div class="col-md-12">
					<img class="img-responsive"
						src="<%=request.getContextPath() %>/resources/images/pets.png" />
				</div>
			</div>
		</div>
	</div>
	<!-- /.container -->

	<script type="text/javascript"
		src="<%=request.getContextPath() %>/webjars/jquery/2.2.4/jquery.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath() %>/webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>