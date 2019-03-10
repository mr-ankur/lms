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
String from=request.getParameter("from");
String to=request.getParameter("to");
 try {
	 	        	Class.forName("com.mysql.jdbc.Driver");
	 				Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","root");
	 				Statement stmt=(Statement) con.createStatement();
	 				
	 	           Statement stmt1=(Statement) con.createStatement();
	 			   ResultSet rs1=stmt.executeQuery("select distance from metro.station where s_id="+from+"");
	 			   float m=0f;
	 			   if(rs1.next()){
	 				m=rs1.getFloat(1);   
	 			   }
	 			  Statement stmt2=(Statement) con.createStatement();
	 			   ResultSet rs2=stmt.executeQuery("select distance from metro.station where s_id="+to+"");
	 			   float n=0f;
	 			   if(rs2.next()){
	 				n=rs2.getFloat(1);   
	 			   }
	 			  Statement stmt3=(Statement) con.createStatement();
	 			   ResultSet rs3=stmt.executeQuery("select cpk,min,max from metro.fair where id=1");
	 			  float f=0f;
	 			  int d11=0,d22=0;
	 			  if(rs3.next()){
		 				f=rs3.getFloat(1)/1000; 
		 				d11=rs3.getInt(2);
		 				d22=rs3.getInt(3);
		 			 }
	 			 float f1=m-n;
	 				  f1=Math.abs(f1);
	 			 f=f*f1;
	 			 int a1=Math.round(f);
	 			 if(a1<d11){
	 				 a1=d11;
	 		     }
	 			if(a1>d22){
	 				 a1=d22;
	 		     }
	 			 String s11=Integer.toString(a1);
	 			request.setAttribute("alertMsg", "Your Fare will be "+s11+".");
	      		RequestDispatcher rd=request.getRequestDispatcher("FareCal.jsp");  
	      		rd.include(request, response);	
	 			 
	 	         
	 	        } catch (Exception ex) {
	 	        	request.setAttribute("alertMsg", "Select Your stations First");
		      		RequestDispatcher rd=request.getRequestDispatcher("FareCal.jsp");  
		      		rd.include(request, response);	
	 	        }%>
</body>
</html>