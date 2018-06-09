<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="Index.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link rel="stylesheet" href="code/bootstrap-3.3.7-dist/css/bootstrap.css">
	<link rel="stylesheet" href="code/mycss/main.css">
  </head>
  
  <body style="background:url('img/beijing.jpg') ;">
    <%@ include file="scoreHeader.jsp"%>
    
    <!-- 结果展示 -->
    <div class="container" style="margin-top: 100px;">
    <div class="row">
    
        <!-- 左侧名词解释栏 -->
  		<div class="col-sm-6 col-md-3">
    		<div class="panel panel-default">
 				<div class="panel-heading"><strong>屏幕尺寸</strong></div>
  				<div class="panel-body">
   					是指笔记本屏幕对角线的尺寸，一般用英寸来表示。一般都采用15英寸和17英寸的屏幕尺寸，15英寸左右的屏幕在体积和重量上都是比较易接受的一种尺寸。
  				</div>
            </div>
            <div class="panel panel-default">
 				<div class="panel-heading"><strong>CPU类型</strong></div>
  				<div class="panel-body">
   					 笔记本CPU主要是Intel和AMD两大系列，Intel主要有赛扬、奔腾、酷睿i3、i5、i7以及Atom系列，i5是目前最具性价比的；；AMD主要有A4、A6、A8、A10及E系列，其中A8系列可选性较高。
  				</div>
            </div>
            <div class="panel panel-default">
 				<div class="panel-heading"><strong>显卡类型</strong></div>
  				<div class="panel-body">
   					用于笔记本的显卡分为集显、核显和独显。集显和核显主要集成在主板或者CPU上共享系统内存的显卡类型；独显也称GPU拥有独立的显存。
  				</div>
            </div>
            <div class="panel panel-default">
 				<div class="panel-heading"><strong>显存容量</strong></div>
  				<div class="panel-body">
   					显卡本身拥有存储图形、图像数据的存储器，显存的大小决定了显示器分辨率的大小及显示器上能够显示的颜色数。一般的说显存越大，其性能也越高。
  				</div>
            </div>
    	</div>
    	
    	<!-- 右侧商品展示栏 -->
    	<div class="col-sm-6 col-md-9">
    	
    	    <%
			List pcList = (List) session.getAttribute("pcList");
			int currentPage = Integer.parseInt(String.valueOf(request.getAttribute("currentPage")));  
			if(currentPage<1){
			    currentPage = 1;
			}if((currentPage-1)*5>=pcList.size()){
			    currentPage = (pcList.size()-1)/5+1;
			}
			System.out.println("\n"+currentPage);
			int begin = 5*(currentPage-1);
			System.out.println(begin);
			System.out.println(pcList.size());
			int end = (begin+5)<pcList.size()?(begin+5):pcList.size();
			System.out.println(end);
			List showList = pcList.subList(begin,end);
			Iterator iter = showList.iterator();
			PC pc;
			while (iter.hasNext()) {
				pc = (PC) iter.next();
		    %>
    		<div class="thumbnail">
    			<div class="row">
    				<div class="col-md-3">
   					 	<a href="<%=pc.getUrl() %>" class="thumbnail">
     					 <img src="<%=pc.getImgurl() %>" alt="...">
    					</a>
  					</div>
  					<div class="col-md-9">
  						<div class="caption">
        					<h3><%=pc.getTitle()%></h3>
        					<h4>
        					<span class="glyphicon glyphicon-jpy" aria-hidden="true"></span>
        					<font color="red"><%=pc.getPrice() %></font>
        					<span class="label label-info"><%=pc.getComment() %></span>
        					<span class="label label-info"><%=pc.getFlag() %></span>
        					</h4>
        					<dl>
        					<div class="row">
        					  <dd class="col-md-4">
        					  	<span>品牌：</span>
        					  	<span><%=pc.getBrand() %></span>
        					  </dd>
        					  <dd class="col-md-4">
        					  	<span>上市时间：</span>
        					  	<span><%=pc.getTime() %></span>
        					  </dd>
        					  <dd class="col-md-4">
        					  	<span>屏幕尺寸：</span>
        					  	<span><%=pc.getSize() %></span>
        					  </dd>
        					  <dd class="col-md-4">
        					  	<span>CPU类型：</span>
        					  	<span><%=pc.getCPU() %></span>
        					  </dd>
        					  <dd class="col-md-4">
        					  	<span>产品类型：</span>
        					  	<span><%=pc.getType() %></span>
        					  </dd>
        					  <dd class="col-md-4">
        					    <span>显存容量：</span>
        					    <span><%=pc.getXiancun() %></span>
        					   </dd>
        					 </div>
        					 </dl>
      					</div>
  					</div>
    			</div>
    		</div>
    		<%
			}
			%>

		<%-- 翻页 --%>  		
		<nav>
  			<ul class="pager">
    			<li><a href="service.do?service=fenye&page=<%=1%>">首页</a></li> 
    			<li><a href="service.do?service=fenye&page=<%=currentPage-1%>">前一页</a></li>
    			<li><a href="service.do?service=fenye&page=<%=currentPage%>">当前页：<%=currentPage%>/<%=(pcList.size()-1)/5+1%></a></li>
    			<li><a href="service.do?service=fenye&page=<%=currentPage+1%>">后一页</a></li>
   		 	<li><a href="service.do?service=fenye&page=<%=(pcList.size()-1)/5+1%>">尾页</a></li>
 		 	</ul>
		</nav>	
		
    	</div>
    	
  </div>
  </div>

   
  </body>
</html>
