<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>顾客列表</title>
    
    <style>
    	#tr1 td{
    		text-align:center;
    		font-size:17px;
    	}
    	td{
    		width:200px;
    	}
    </style>
  </head>
  <body>
		<form action="<%= request.getContextPath() %>/toAddFilmForm" method="post">
			<button type="submit">新增</button>
		</form>
    	<table border="1px solid black" cellspacing="0" bordercolor="silver" align="center">
    		<tr id="tr1" bgcolor="#E8E8E8">
    			<td>film_id</td>
    			<td>title</td>
    			<td>description</td>
    			<td>language_id</td>
    			<td>操作</td>
    		</tr>
    		
    	</table>
  </body>
</html>