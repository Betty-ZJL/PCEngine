<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="errorPage.jsp"%>
<!--导航条-->
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<!-- logo-->
		<div class="navbar-header" style="width:200px;height:50px;">
			<img src="img/logo.jpg" style="margin-top: 6.5;"/>
		</div>
		
	    <form class="navbar-form navbar-left" action="service.do?service=sim" method="post">
        	<div class="form-group">
          		<input type="text" class="form-control" placeholder="带你寻找最低价" name="keys">
        	</div>
        	<button type="submit" class="btn btn-default">
        		<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
        	</button>
    	</form>

		<!-- 导航条功能块 -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        		<!--最右侧-->
				<ul class="nav navbar-nav navbar-right">
					<li class="word"><a href="simple.jsp">简单检索</a></li>
					<li class="word"><a href="complex.jsp">高级检索</a></li>
				</ul>
			</div>
	</div>
</nav>
