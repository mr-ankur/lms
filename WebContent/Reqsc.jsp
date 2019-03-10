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

	 String uname = (String)session.getAttribute("uname");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","root");
		Statement stmt=(Statement) con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from metro.login where name='"+uname+"'");
           if(!rs.next()){
       		RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");  
       		rd.include(request, response);
			}
           else { 
        	   session.setAttribute("gender", rs.getString(11));
        	   session.setAttribute("mobile", rs.getString(5));
        	   session.setAttribute("email", rs.getString(6));
        	   session.setAttribute("fname", rs.getString(2));
          		RequestDispatcher rd=request.getRequestDispatcher("/RequestSmartCard.jsp");  
          		rd.include(request, response);
        	    }
		
	/*	if(rs.next()){
		
			
			if(s2.equals("anabde")){
			setVisible(false);
			new AdminHome();
			}
			else{
				String s11,s12,s13,s16,s15,s17,s18;
				s17=rs.getString(1);
				s11=rs.getString(2);
				s12=rs.getString(7);
				s13=rs.getString(6);
				s16=rs.getString(5);
				s15=rs.getString(10);
				s18=rs.getString(11);
				Complaint x=new Complaint();
				x.getData1(s11,s12,s13,s16,s15);
				x.setVisible(false);
				RequestCard y=new RequestCard();
				y.getData2(s17,s11,s12,s18,s16,s13,s15);
				y.setVisible(false);
				History z=new History();
				z.setId(s17);
				z.setVisible(false);
				PlanMyTrip w=new PlanMyTrip();
				w.setId(s17);
				w.setVisible(false);
				setVisible(false);
				new UserHome();
			} 
		}
		else{
			JOptionPane.showMessageDialog(null, "You entered wrong username or password");
		} */
	}catch(Exception e){
		// JOptionPane.showMessageDialog(null,e);
	} 





 
%>
</body>
</html>