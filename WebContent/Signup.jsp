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

	String uname=request.getParameter("uname"); 
	String psw=request.getParameter("psw"); 
	String email=request.getParameter("email"); 
	String pswrepeat=request.getParameter("psw-repeat"); 
	String fname=request.getParameter("fname"); 
	String age=request.getParameter("age"); 
	int ag=0;
	if(!age.equals("")){
		try{
         ag=Integer.parseInt(age);
		}catch(Exception e){
			request.setAttribute("alertMsg", "Data Provided in Age Field is not allowed ");
       		RequestDispatcher rd=request.getRequestDispatcher("/Login.jsp");  
       		rd.include(request, response);	
		}
	}
	String phnum=request.getParameter("phnum");
	long ph = 0;
	if(!phnum.equals("")){
	
	try{
		ph=Long.parseLong(phnum);
		}catch(Exception e){
			request.setAttribute("alertMsg", "Data Provided in Phone Number Field is not allowed ");
      		RequestDispatcher rd=request.getRequestDispatcher("/Login.jsp");  
      		rd.include(request, response);	
		}
	}
	String add=request.getParameter("add"); 
	String gender=request.getParameter("gender"); 
	String sq=request.getParameter("sq"); 
	String ans=request.getParameter("ans"); 
	if(psw.equals(pswrepeat)){
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","root");
				Statement stmt=(Statement) con.createStatement();
				stmt.executeUpdate("insert into metro.login values(null,'"+fname+"','"+uname+"','"+psw+"','"+phnum+"','"+email+"','"+ag+"','"+sq+"','"+ans+"','"+add+"','"+gender+"')");
				
			        	request.setAttribute("alertMsg", "Your Account is created Successfully");
			       		RequestDispatcher rd=request.getRequestDispatcher("/Login.jsp");  
			       		rd.include(request, response);
						
			}catch(Exception e){
				request.setAttribute("alertMsg", "You have some input error");
		   		RequestDispatcher rd=request.getRequestDispatcher("/Login.jsp");  
		   		rd.include(request, response);
				
			}
			}
	else{
		request.setAttribute("alertMsg", "Both Password Field Mismatched ");
   		RequestDispatcher rd=request.getRequestDispatcher("/Login.jsp");  
   		rd.include(request, response);
	}
				
		
		
	%>
</body>
</html>