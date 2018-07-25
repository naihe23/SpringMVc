<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Web高级编程-实验1</title>
<link href="css/style.css" rel="stylesheet" type="text/css" /> 
</head>

<body>
<div id="login-form">
<form action="login" method="post" onsubmit="return check()">
	<h2 class="form-title">欢迎使用XX系统</h2>
	<hr>
	<div class="invisible" id="errMsg"></div>
	<div class="form-control">账号：<input type="text" name="account"></div>
	<div class="form-control">密码：<input type="password" name="password"></div>
	<div class="form-control">类型：
		<select name="type">
			<option value="0">学生</option>
			<option value="1">教师</option>
		</select>
	</div>
	<hr>
	<div class="form-control"><input type="submit" value="登录系统"></div>
</form>
</div>

<script type="text/javascript">
	var errCode = "${errorCode}";
	var divMsg = document.getElementById("errMsg");
	if (errCode == "1"){		
		divMsg.className="error";
		divMsg.innerHTML="用户名或密码错误！";
	} else if (errCode == "2"){	
		divMsg.className="error";
		divMsg.innerHTML="非法访问，请先登录！";
	}
	
	function check(){
		var controls = document.getElementsByTagName("input");
		for (var i=0;i<controls.length;i++){
			if (controls[i].value.length == 0){
				controls[i].focus();
				alert("您输入的信息不完整！");
				return false;
			}				
		}			
		return true;
	} 
</script>

</body>
</html>