<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
String fname=request.getParameter("fname");
String sq=request.getParameter("sq");
String ans=request.getParameter("ans"); 
try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","root");
			Statement stmt=(Statement) con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from metro.login where name='"+fname+"' and s_q='"+sq+"' and ans='"+ans+"'");
			if(rs.next()){
			String uname=rs.getString(3);
			String psw=rs.getString(4);
			request.setAttribute("alertMsg", "Your username is "+uname+" and password is "+psw+".");
      		RequestDispatcher rd=request.getRequestDispatcher("Forgot.jsp");  
      		rd.include(request, response);	
			}
			else{
				request.setAttribute("alertMsg", "Enter Right Information in Fields.");
	      		RequestDispatcher rd=request.getRequestDispatcher("Forgot.jsp");  
	      		rd.include(request, response);	
			}
		}catch(Exception e){
			request.setAttribute("alertMsg", "You entered some wrong information.");
      		RequestDispatcher rd=request.getRequestDispatcher("Forgot.jsp");  
      		rd.include(request, response);
		}%>
</body>
</html>