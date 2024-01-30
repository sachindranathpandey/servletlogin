package com;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;



import dao.StudentDao;
import entity.Student;



public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		Student student=new Student(email,password);
		out.print(student);
	  String message = StudentDao.userLogin(student);
	  
	  if(message.equals("success")) {
		 
		  request.setAttribute("name", StudentDao.getStudentInfo(email));
		  RequestDispatcher rd=request.getRequestDispatcher("profile.jsp");
		  rd.forward(request, response);
	  }else {
		  request.setAttribute("loginmessage", message);
		  RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
		  rd.forward(request, response);
	  }
	  
	  
	}

}
