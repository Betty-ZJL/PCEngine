<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	errorPage="errorPage.jsp"%>
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
	<img class="center-block" style="margin-top: 80px;" src="img/biglogo.jpg"/>
</div>
	

<div class="container">
<form class="center-block" action="service.do?service=com" method="post" style="width:1050px">

	<div class="checkbox" style="margin-top: 30px;">
	    <img style="margin-right: 50px;" src="img/brand.jpg"/>
		<label class="choose"><input name="brand" type="checkbox" value="联想笔记本电脑" />联想 </label> 
		<label class="choose"><input name="brand" type="checkbox" value="苹果笔记本电脑" />苹果 </label> 
		<label class="choose"><input name="brand" type="checkbox" value="华硕笔记本电脑" />华硕 </label> 
  	</div>
  	
  	<div class="checkbox">
  		<img style="margin-right: 50px;" src="img/size.png"/>
  		<label class="choose"><input name="size" type="checkbox" value="11英寸" />11英寸 </label> 
  		<label class="choose"><input name="size" type="checkbox" value="12英寸" />12英寸 </label> 
  		<label class="choose"><input name="size" type="checkbox" value="13英寸" />13英寸 </label> 
		<label class="choose"><input name="size" type="checkbox" value="14英寸" />14英寸 </label> 
		<label class="choose"><input name="size" type="checkbox" value="15英寸" />15英寸 </label> 
  	</div>
  	
  	<div class="checkbox">
   		<img style="margin-right: 50px;" src="img/cpu.jpg"/>
   		<label class="choose"><input name="CPU" type="checkbox" value="AMD" />AMD </label> 
		<label class="choose"><input name="CPU" type="checkbox" value="赛扬" />赛扬 </label> 
		<label class="choose"><input name="CPU" type="checkbox" value="intel i5" />intel i5 </label> 
		<label class="choose"><input name="CPU" type="checkbox" value="intel i7" />intel i7 </label> 
		<label class="choose"><input name="CPU" type="checkbox" value="intel 酷睿 M" />intel 酷睿 M </label>
  	</div>
  	
  	<div class="checkbox">
   		<img style="margin-right: 50px;" src="img/type.jpg"/>
		<label class="choose"><input name="type" type="checkbox" value="超极本" />超极本</label> 
		<label class="choose"><input name="type" type="checkbox" value="游戏本" />游戏本 </label> 
		<label class="choose"><input name="type" type="checkbox" value="娱乐办公本" />娱乐办公本 </label> 
  	</div>
  	
  	<div class="checkbox">
   		<img style="margin-right: 50px;" src="img/xiancun.png"/>
		<label class="choose"><input name="xiancun" type="checkbox" value="2G独显" />2G独显 </label> 
		<label class="choose"><input name="xiancun" type="checkbox" value="4G独显" />4G独显 </label> 
		<label class="choose"><input name="xiancun" type="checkbox" value="核心显卡/集显" />核心显卡/集显</label> 
  	</div>
	
	<div class="form-inline"> 
    	<img style="margin-right: 50px;" src="img/price.jpg"/>
    	<input type="number" class="form-control" placeholder="2000" name="minprice" value="2000">
        ~
    	<input type="number" class="form-control" placeholder="7000" name="maxprice" value="20000">
    </div>
  
   <button class="btn btn-lg btn-primary btn-block center-block word"
					type="submit" style="width: 100px;margin-top: 30px;">GO</button>
	
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