<%@ page language="java" pageEncoding="utf-8"%>
<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>PetClinic :: a Spring Framework demonstration</title>

<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value="/resources/images/favicon.png"/>">
<link rel="stylesheet"
	href="<c:url value="/webjars/bootstrap/3.3.6/css/bootstrap.min.css"/>" />
<link rel="stylesheet" 
	href="<c:url value="/resources/css/petclinic.css" />" />
</head>

<body>

	<nav class="navbar navbar-default" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="<c:url value="/"/>"><span></span></a>
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
						href="<c:url value="/"/>" title="login">
							<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
							<span>Login</span>
					</a></li>
					<li class=""><a href="<c:url value="/welcome.html"/>"
						title="home page"> <span class="glyphicon glyphicon-home"
							aria-hidden="true"></span> <span>Home</span>
					</a></li>
					<li class="active"><a href="<c:url value="/owners/find.html"/>"
						title="find owners"> <span class="glyphicon glyphicon-search"
							aria-hidden="true"></span> <span>Find owners</span>
					</a></li>
					<li class=""><a
						href="<c:url value="/vets.html"/>"
						title="veterinarians"> <span
							class="glyphicon glyphicon-th-list" aria-hidden="true"></span> <span>Veterinarians</span>
					</a></li>

					<li class=""><a
						href="<c:url value="/oups.html"/>"
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
			<h2>Find Owners:</h2>
			<p>&nbsp;</p>
			<form class="form-horizontal" role="form" action="<c:url value="/owners/find"/>" method="post">
					
				<div class="form-group">
					<label for="account" class="col-sm-2 control-label">Owner Name</label>
					<div class="col-sm-4">
						<input type="text" name="name" class="form-control" placeholder="请输入宠物主人的姓名">
					</div>	
					<div class="col-sm-2">
						<button type="submit" class="btn btn-default" >Find Owner</button>
					</div>	
					
					<div class="col-sm-1">
						<button type="button" class="btn btn-default" id="btnAdd">Add Owner</button>
					</div>			
				</div>
				<div class="form-group">
				
				 <div class="alert alert-danger col-sm-offset-1 col-sm-6 hide" id="errMsg"></div>
				 		
				 </div>				
				
			</form>
			
			<table id="ownersTable" class="table table-striped">
        <thead>
        <tr>
            <th style="width: 150px;">Name</th>
            <th style="width: 200px;">Address</th>
            <th style="width: 120px;">City</th>
            <th style="width: 120px">Telephone</th>            
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${owners}" var="owner">
            <tr>
                <td>
                    <spring:url value="/owners/{ownerId}.html" var="ownerUrl">
                        <spring:param name="ownerId" value="${owner.id}"/>
                    </spring:url>
                    <c:out value="${owner.name}"/>
                </td>
                <td>
                    <c:out value="${owner.address}"/>
                </td>
                <td>
                    <c:out value="${owner.city}"/>
                </td>
                <td>
                    <c:out value="${owner.telephone}"/>
                </td>               
            </tr>
        </c:forEach>
        </tbody>
    </table>
		</div>
	</div>
	<!-- /.container -->

	<script type="text/javascript"
		src="<c:url value="/webjars/jquery/2.2.4/jquery.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/webjars/bootstrap/3.3.6/js/bootstrap.min.js"/>"></script>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$("#errMsg").hide();
			$("#btnAdd").click(function(){
				$(location).attr('href', '<c:url value="/owners/new"/>');
			});
		});
	</script>

</body>
</html>