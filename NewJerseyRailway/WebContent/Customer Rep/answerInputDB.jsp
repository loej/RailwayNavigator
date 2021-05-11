<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.sql.*" %>
<%
	//session.setAttribute("username", username);
	//session.setAttribute("password", password); 
	//myStorage = window.sessionStorage;
	//sessionStorage.setItem("username", username);
	
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("Left Blank Intentionally");

    Statement st = con.createStatement();
    
    String questionID = session.getAttribute("questionID").toString();   
    String answer = session.getAttribute("answer").toString();

    ResultSet rs;

	int execute_one = st.executeUpdate("UPDATE question_table SET answer = '"+answer+"' WHERE questionID = "+questionID+"");
    response.sendRedirect("FAQ.jsp");
    
%>