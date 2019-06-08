package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Impl.UserServiceImpl;

import model.User;
import dao.Impl.UserDaoImpl;

public class ServletEditPwd extends HttpServlet{
	
	private User user;
	private UserServiceImpl userServiceImpl=new UserServiceImpl();
	
	public void doGet(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
		String userNum=(String) request.getSession().getAttribute("usernum");
		String password=request.getParameter("pwd");
		user=new User();
		user.setUserNum(userNum);
		user.setPassword(password);
		int rs=userServiceImpl.editPwd(user);
		if(rs>0){
			request.setAttribute("msg", "�޸ĳɹ�����");
			request.setAttribute("password", user.getPassword());
			request.getRequestDispatcher("admin/selectPwd.jsp").forward(request, response);
		}else{
			request.setAttribute("msg", "�޸�ʧ�ܣ���");
			request.setAttribute("password", user.getPassword());
			request.getRequestDispatcher("admin/selectPwd.jsp").forward(request, response);
		}
		
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
		doGet(request,response);
	}
}
