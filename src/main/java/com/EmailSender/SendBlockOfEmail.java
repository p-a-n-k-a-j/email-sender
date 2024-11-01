package com.EmailSender;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SendBlockOfEmail")
public class SendBlockOfEmail extends HttpServlet {
	public static String name;
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("Sevlet Accessed");
        response.setContentType("text/html");
        try (PrintWriter out = response.getWriter()) {
            String message = request.getParameter("message");
            String userName = request.getParameter("username");
            String subject = request.getParameter("subject");
            String[] toEmails = request.getParameter("emails").split(",");
           name= userName;
           boolean test=false;
            for (String email : toEmails) {
             test=  GetEmails.emails(email, subject, message);
               
            }
            if(test) {
            	response.sendRedirect("index.jsp");
            }
        }catch(Exception e) {
        	e.getMessage();
        }
    }
}

