<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
	<title>添加</title>
	<script language="javascript" src="${pageContext.request.contextPath}/script/jquery-2.1.4.min.js"></script>
	<script language="javascript" src="${pageContext.request.contextPath}/script/bootstrap.min.js"></script>
	<link href="${pageContext.request.contextPath}/style/bootstrap.min.css" rel="stylesheet" type="text/css">
</head>
<body> 

<!-- 标题显示 -->
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="../style/images/title_arrow.gif"/> 电影添加
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<!--显示表单内容-->
<div id="MainArea">
    <s:form action="customer_%{customer_id==0? 'add':'edit'}">
    	<s:hidden name="customer_id"></s:hidden>
        <div class="ItemBlock_Title1"><!-- 信息说明<DIV CLASS="ItemBlock_Title1">
        	<IMG BORDER="0" WIDTH="4" HEIGHT="7" SRC="../style/blue/images/item_point.gif" /> 岗位信息 </DIV>  -->
        </div>
        
        <!-- 表单内容显示 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
                <table cellpadding="0" cellspacing="0" class="mainForm">
                    <tr>
                        <td width="100">first_name</td>
                        <td><s:textfield name="first_name" class="InputStyle" /> *</td>
                    </tr>
                     <tr>
                        <td width="100">last_name</td>
                        <td><s:textfield name="last_name" class="InputStyle" /> *</td>
                    </tr>
                     <tr>
                        <td width="100">email</td>
                        <td><s:textfield name="email" class="InputStyle" /> *</td>
                    </tr>
                    <tr>
                        <td width="100">address</td>
                        <%-- <td><s:textfield name="address.address" class="InputStyle" /> *</td> --%>
                        <td>
		                	<s:select name="addressId" list="addresseList" listKey="address_id" listValue="address" headerKey="" headerValue="==请选择==" />
		                </td>
                    </tr>
                </table>
            </div>
        </div>
        
        <!-- 表单操作 -->
        <div id="InputDetailBar">
            <button type="submit">保存</button>
            <!-- <a href="javascript:history.go(-1);"><img src="../style/images/goBack.png"/></a> -->
        </div>
    </s:form>
</div>

</body>
</html>