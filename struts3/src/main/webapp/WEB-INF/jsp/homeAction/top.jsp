<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <style>
        body{
        	margin:0px;
            background-color: lightcyan;
        }
        form{
        	margin: 0px 20px;
        	
        }
        #div1{
        	margin:10px 0px;
            float:right;
        }
        #d1{
        	margin:0px 5px;
        	
        	color:red;
        	font-size:35px;
        	float:left;
        }
    </style>
</head>
<body>
 
	<div id="d1">电影租赁管理系统</div>

    <form action="<%=request.getContextPath() %>/logoutServlet" method="post">
        <div id="div1">
            <s:a action="customer_logout" >退出</s:a>
        </div>
    </form>
</body>
</html>