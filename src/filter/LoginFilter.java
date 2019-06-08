package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginFilter implements Filter{

	public void destroy() {
		
		
	}

	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		
		// ��������������Ҫ�õ�request,response,session����
		HttpServletRequest request=(HttpServletRequest) req;
		HttpServletResponse response=(HttpServletResponse) resp;
		// ����û������URI
		String path=request.getRequestURI();
		String userNum = (String) request.getSession().getAttribute("usernum");
		  // ��½ҳ���������
		  if(path.indexOf("/login.jsp") > -1 || path.indexOf("/register.jsp")>-1) {
		   chain.doFilter(request, response);
		   return;
		  }
		  // �ж����û��ȡ��Ա����Ϣ,����ת����½ҳ��
		  if (userNum == null || "".equals(userNum)) {
		   // ��ת����½ҳ��
		   response.sendRedirect("/StuAMSystem/login/login.jsp");
		  } else {
			  
		   // �Ѿ���½,�����˴�����
		   chain.doFilter(request, response);
		  }
		
	}

	public void init(FilterConfig arg0) throws ServletException {
	
	}

}
