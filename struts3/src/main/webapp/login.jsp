<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<script language="javascript" src="${pageContext.request.contextPath}/script/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">
		function checkinput(){  
			var name = document.getElementById("t1").value;
			if(name ==  null || name == ''){
				alert("用户名不能为空");
				return false;   
			} 
			var password = document.getElementById("t2").value;
			if(password ==  null || password == ''){
				alert("密码不能为空");
				return false;   
			} 
			//return true;
		}
	</script>
	<style type="text/css">
		body{
			background-color: green;
		}
		#div1{
			color: #000;
			font-size: 14px;
			margin: 150px auto;
			background-background: blue;
		}
		table{
			bordstyle:none;
			margin:40px auto;
			border-top:none
		}
		#d1{
			width:400px;
			height:200px;
			border: 1px solid black;
		}
		tr,td{
			border-top-style: none;
			border-bottom-style: none;
			border-left-style:none;
			border-right-style:none;
		}
		#dd2{
			font-size:40px;
			font-style: normal;
			color:gray;
			
		}
		#p1{
			margin: 0;
			padding: 5px 5px;
			border-bottom:1px solid black;
		}
		body{
			background-image: url("${pageContext.request.contextPath}/image/bg.jpg");
		}
	</style>
  </head>
  <body>
  	<div id="dd2">
  		8801  王锐展
  	</div>
  	<div id="div1" align="center">
  		<div id="d1">
  			<p id="p1" align="left">电影租赁管理</p>
	  		<s:form action="customer_login.do" method="post">
		    	<table border="0px solid black" cellspacing="0" bordercolor="silver" >
		    		<tr>
		    			<td >用户名：</td>
		    			<td ><input id="t1" type="text" name="first_name"/></td>
		    		</tr>
		    		<tr>
		    			<td>密码      ：</td>
		    			<td ><input id="t2" type="password" name="last_name"/></td>
		    		</tr>
		    	</table>
		    	<div>
		    		<input type="submit" value="登录" onclick="checkinput()" />
		    		<input type="reset" value="重置" />
		    	</div>
		    </s:form>
  		</div>
  	</div>
  </body>
</html>
