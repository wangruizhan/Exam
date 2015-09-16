<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
    		width:150px;
    	}
    </style>
    <script type="text/javascript" src="javascript/jquery-2.1.4.min.js"></script>
    <script type="text/javascript">
    	function del(obj){
    		if(window.confirm('您确定要删除该记录吗？')){
				//alert("确定");
				var customer_id = obj.attributes[2].nodeValue;
				$.post("/CssJavascriptExam7998/customerDeleteServlet",
				  {
				    customer_id:customer_id
				    //city:"Duckburg"
				  },
				  function(data,status){
				    alert("删除成功");
				  }
				);
				return true;
			}else{
				//alert("取消");
				return false;
			} 
    	}
    </script>
  </head>
  <body>
  		
		<s:form action="customer_addUI">
			<button type="submit">新增</button>
		</s:form>
		
    	<table border="1px solid black" cellspacing="0" bordercolor="silver" align="center">
    		<tr id="tr1" bgcolor="#E8E8E8">
    			<td>操作</td>
    			<td>customer_id</td>
    			<td>first_name</td>
    			<td>last_name</td>
    			<td>email</td>
    			<td>last_update</td>
    			<td>address</td>
    		</tr>
    		<s:iterator value="customerList">
    		<tr>
    			<td width="300px" align="center">
    				<s:a action="customer_delete?customer_id=%{customer_id}" onclick="return window.confirm('您确定要删除吗？')">删除</s:a>
    				|
    				<s:a action="customer_saveUI?customer_id=%{customer_id}" >修改</s:a>
    			</td>
    			<td width="20px" align="center" name="customer_id">${customer_id}</td>
    			<td align="center" name="first_name">${first_name}</td>
    			<td align="center" name="last_name">${last_name}</td>
    			<td align="center" name="email">${email}</td>
    			<td align="center" name="last_update">${last_update}</td>
    			<td align="center" name="address">${address.address}</td>
    			
    		</tr>
    		</s:iterator>
    	</table>
  </body>
</html>