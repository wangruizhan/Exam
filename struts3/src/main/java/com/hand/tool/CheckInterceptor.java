package com.hand.tool;

import com.hand.po.Customer;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
/**
 * 拦截器
 * @author Ken
 *
 */
public class CheckInterceptor extends AbstractInterceptor {
	
	public String intercept(ActionInvocation invocation) throws Exception {

		Customer customer = (Customer) ActionContext.getContext().getSession().get("customer");
		String actionName = invocation.getProxy().getActionName();
		String namespace = invocation.getProxy().getNamespace();
		String privUrl = namespace + actionName; // 对应权限的URL
		
		
		if( customer == null){ // 如果未登录，转到登录 页面
			if(privUrl.startsWith("/customer_login")){ 
				// 如果是去登录，就放行
				return invocation.invoke();
			}else{
				// 如果不是取登录，就转到登录页面
				return "loginUI";
			}
		}else{ // 如果已登录，就判断权限
			return invocation.invoke(); // 放行
		}	
		
	}

}
