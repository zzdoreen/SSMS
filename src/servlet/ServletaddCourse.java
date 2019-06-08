package servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Impl.CourseServiceImpl;

import dao.Impl.CourseDaoImpl;

import model.Course;
import model.Student;
import model.User;

public class ServletaddCourse extends HttpServlet{
	
	private Course course;
	private ServletFindAllCos servletFindAllCos=new ServletFindAllCos();
	private CourseServiceImpl courseServiceImpl=new CourseServiceImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String courseName = request.getParameter("courseName");
		int courseCredit = Integer.parseInt(request.getParameter("courseCredit"));
		int courseHours = Integer.parseInt(request.getParameter("courseHours"));
		String courseTea = request.getParameter("courseTea");
		String coDate = request.getParameter("courseDate");
		Date courseDate=null;
		try {
			 courseDate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("courseDate"));
		} catch (ParseException e) {
			
			e.printStackTrace();
		} 
		
	//	System.out.println(courseDate);
		course=new Course(courseName,courseCredit,courseHours,courseTea,courseDate);
		//new Course( courseName,  courseCredit,  courseHours,
		//		 courseTea,  courseDate);
		//��֤�Ƿ���ڸý�ʦ�γ�
		Course cos=courseServiceImpl.selectOneCos(course);
		if(cos==null){
			int rs=courseServiceImpl.addCos(course,coDate);
			if(rs>0){
				request.setAttribute("msg", "��ӳɹ�����");
				servletFindAllCos.doGet(request, response);
			//	request.getRequestDispatcher("admin/addCourse.jsp").forward(request, response);
			}else{
				request.setAttribute("msg", "���ʧ�ܣ���");
				request.getRequestDispatcher("admin/addCourse.jsp").forward(request, response);
			}
		}else{
			request.setAttribute("msg", "�ÿγ���¼�룬���������룡��");
			request.getRequestDispatcher("admin/addCourse.jsp").forward(request, response);
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
