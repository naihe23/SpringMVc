<%@ page language="java" pageEncoding="utf-8"%>
<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String sysPath= request.getContextPath();%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>PetClinic :: a Spring Framework demonstration</title>

<link rel="shortcut icon" type="image/x-icon"
	href="<%=sysPath%>/resources/images/favicon.png">
<link rel="stylesheet"
	href="<%=sysPath%>/webjars/bootstrap/3.3.6/css/bootstrap.min.css" />
<link href="<%=sysPath%>/resources/css/petclinic.css"
	rel="stylesheet" />
</head>

<body>

	<nav class="navbar navbar-default" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="<%=sysPath%>"><span></span></a>
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#main-navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="navbar-collapse collapse" id="main-navbar">
				<ul class="nav navbar-nav navbar-right">					
					<li class=""><a
						href="<%=sysPath%>" title="login">
							<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
							<span>Login</span>
					</a></li>
					<li class=""><a href="<%=sysPath%>/welcome.html"
						title="home page"> <span class="glyphicon glyphicon-home"
							aria-hidden="true"></span> <span>Home</span>
					</a></li>
					<li class="active"><a
						href="<%=sysPath%>/owners/find.html"
						title="find owners"> <span class="glyphicon glyphicon-search"
							aria-hidden="true"></span> <span>Find owners</span>
					</a></li>
					<li class=""><a
						href="<%=sysPath%>/vets.html"
						title="veterinarians"> <span
							class="glyphicon glyphicon-th-list" aria-hidden="true"></span> <span>Veterinarians</span>
					</a></li>

					<li class=""><a
						href="<%=sysPath%>/oups.html"
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
			<h2><c:if test="${owner['new']}">New </c:if> Owner</h2>
			<p>&nbsp;</p>
			<form class="form-horizontal" role="form" action="<%=sysPath%>/owners/new" method="post">
				<div class="form-group">
				
				 <div class="alert alert-danger col-sm-offset-1 col-sm-6" id="errMsg"></div>
				 		
				 </div>		
				<div class="form-group">
					<label for="name" class="col-sm-2 control-label">Name</label>
					<div class="col-sm-8">
						<input type="text" name="name" class="form-control" placeholder="请输入姓名">
					</div>							
				</div>
				
				<div class="form-group">
					<label for="address" class="col-sm-2 control-label">Address</label>
					<div class="col-sm-8">
						<input type="text" name="address"" class="form-control" placeholder="请输入地址">
					</div>							
				</div>
				
				<div class="form-group">
					<label for="city" class="col-sm-2 control-label">City</label>
					<div class="col-sm-8">
						<input type="text" name="city" class="form-control" placeholder="请输入城市">
					</div>							
				</div>
				
				<div class="form-group">
					<label for="telephone" class="col-sm-2 control-label">Telephone</label>
					<div class="col-sm-8">
						<input type="text" name="telephone" class="form-control" placeholder="请输入电话号码">
					</div>							
				</div>
							
				<div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <c:choose>
                    <c:when test="${owner['new']}">
                        <button class="btn btn-default" type="submit">Add Owner</button>
                    </c:when>
                    <c:otherwise>
                        <button class="btn btn-default" type="submit">Update Owner</button>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>				
				
			</form>
		</div>
	</div>
	<!-- /.container -->

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/webjars/jquery/2.2.4/jquery.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$("#errMsg").hide();
			
		});
	</script>

</body>
</html>