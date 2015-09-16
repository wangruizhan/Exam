<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
	<title>主页</title>
	<style>
        frame{
            border:1px solid black;
        }
    </style>
</head>
	<frameset rows="55,*" framespacing="0" border="0" frameborder="0">
	    <frame src="${pageContext.request.contextPath}/home_top.do" name="TopMenu"  scrolling="no" noresize />
	    <frameset cols="180,*" id="resize">
	        <frame noresize name="menu" src="${pageContext.request.contextPath}/home_left.do" scrolling="yes" />
	        <frame noresize name="right" src="${pageContext.request.contextPath}/home_right.do" scrolling="yes" />
	    </frameset>
	</frameset>
	<noframes><body>
</body>
</noframes></html>



