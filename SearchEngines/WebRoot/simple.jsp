<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="stylesheet" href="code/bootstrap-3.3.7-dist/css/bootstrap.css">
	<link rel="stylesheet" href="code/mycss/main.css">
</head>
<body>

	<%@ include file="header.jsp"%>
	
<!--标题-->
<div class="container-fluid">	
	<img class="center-block" style="margin-top: 165px;" src="img/biglogo.jpg"/>
</div>
	
<!-- 搜索框 -->
<div class="container">
<form action="service.do?service=sim" method="post">
	<div class="input-group center-block" style="width:60%;margin-top: 30px;">
		<input style="width:90%;height:50px;" type="text" class="form-control" placeholder="带你寻找最低价" name="keys">
		<span class="input-group-btn">
			<button style="height:50px;" class="btn btn-default" type="submit"><strong>Go!</strong></button>
		</span>
	</div>
</form>
</div>
			
	<%
		String message = (String) request.getAttribute("message");
		if (message != null) {
	%>
	<script>
           let wrong="<%=message%>";
		   alert(wrong);
	</script>
	<%
		}
	%>
	
	

</body>
</html>