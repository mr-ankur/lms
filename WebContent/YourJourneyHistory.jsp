<html>
 
     <head>
	 <meta charset="utf-8">
      <title>LMRC/Your Journey History</title>
	  <link rel="icon" style="font-size:30px;" href="images/title_logo.png" type="image/x-icon">
     
	 
	 <link rel="stylesheet" href="bootstrap.min.css">
	 <link rel="stylesheet" href="normalize.css">
	  <link rel="stylesheet" href="YourJourneyHistory.css">
	   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
      
      <style>
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
</style>
  
     </head>
     <body>         
		            
		         <section class="head" style="height:104px;width:200vh;-webkit-user-select:none;">
                  <div class="image1" style=" margin-top:51px;margin-left:100px;height:30px;width:115.9vh;"><img class = "image1" style="height:85px;width:782px;" src ="res/lmrc.png"></div>
		          <div class="image2" style="margin-left:957px;margin-top:-75px;"><img class = "image2" style="height:130px;width:250px;" src ="res/Swachh_Bharat_Logo.png"></div>
	             </section>
		 
		               <section class="hero" style="background-color:#F1F3EA;background-size:cover;height:105vh;width:200vh;">
				      	  <div style="text-align:center;padding-top:18px;font-size:12px;"><h1 style="color:#8F8888;"><hr width="100%" size="5"/>Your Journey History Information<hr width="100%" size="5"/></h1>
						
						 
						 
						 
						 
						 </div>
						 	 
					   </section>
					   <div style="margin-left:70px;margin-top:-600px;">
					   
					   <form method="post">

                      <table id="customers">
                      <tr>
                      <th>DATE</th>
                      <th>TIME</th>
                      <th>FROM</th>
                      <th>TO</th>
                      <th>TRAIN NAME</th>
                      <th>PAID FARE</th>
                      </tr>
					   <%@ page import="java.sql.*"%>
	                   <%@ page import="javax.sql.*"%>
					    <%  
					    String id1=(String)session.getAttribute("id");
					    int id=2;
					    try{
					    	 id=Integer.parseInt(id1);
					    	 System.out.println(id);
					    }
					    catch(Exception e){
				          }
					    try{
			        		Class.forName("com.mysql.jdbc.Driver");
			        		Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","root");
			        		Statement stmt=(Statement) con.createStatement();
			        		ResultSet rs=stmt.executeQuery("select * from metro.history where id='"+id+"'");   
			                while(rs.next()){ 
			                    %>		                           
			                            <TR>
			                                <TD> <%= rs.getString(2) %> </TD>
			                                <TD> <%= rs.getString(3) %> </TD>
			                                <TD> <%= rs.getString(4) %> </TD>
			                                <TD> <%= rs.getString(5) %> </TD>
			                                <TD> <%= rs.getString(6) %> </TD>
			                                <TD> <%= rs.getString(7) %> </TD>
			                            </TR>
			                        
			                    <% 
			                        } 
			                %></TABLE><% 
			                }catch(Exception e){
			        		// JOptionPane.showMessageDialog(null,e);
			        	    } 

           
        %>
        </div>
					   
							
		              <section class="foot" style="margin-top:-13vh;">
					  <div class="footer"> <div class="h6"><h6 style="position:absolute; margin-top:-30px; font-size:19px;">LET'S STAY IN TOUCH</h6><h6 style="margin-top:-5px; pointer-size:10px;">( Get updates on important informations and more )</h6>
					    <form class="emailid" >
		                 <input class="email" type="text" style="border:1px solid;margin-top:-40px;padding:15px;border-color:#935B5B; position:absolute;" placeholder=" Enter Email Address">
						 
		               </form>
					   </div>
					   <div>
					   <p style="margin-left:680px;font-size:21px;margin-top:-95px;color:white;position:absolute; -webkit-user-select:none;">ABOUT</p>
					   <p style="margin-left:840px;font-size:21px;margin-top:-95px;color:white;position:absolute; -webkit-user-select:none;">CONTACT US</p>
					   <p style="font-size:35px;margin-left:1100px;margin-top:-60px;color:white;position:absolute; -webkit-user-select:none;">0522-2288869</p>
					   <p style="font-size:20px;margin-left:1138px;margin-top:-80px;color:white;position:absolute; -webkit-user-select:none;">LMRC Helpline</p>
					   <p style="font-size:18px;margin-left:1080px;margin-top:-5px;color:#FEE2B6;position:absolute; -webkit-user-select:none;">[9:30 AM to 6:00 PM (Mon-Sat)]</p>
					  
					 <a href="" > <p style="font-size:16px;margin-left:680px;margin-top:-60px;color:#C8E6D9; -webkit-user-select:none;position:absolute;">LMRC</p></a>
					 <a href="" > <p style="font-size:16px;margin-left:680px;margin-top:-39px;color:#C8E6D9; -webkit-user-select:none;position:absolute;">Developers</p></a>
					 <a href="" > <p style="font-size:16px;margin-left:680px;margin-top:-16px;color:#C8E6D9; -webkit-user-select:none;position:absolute;">Privacy Policy</p></a>
					 <a href="" > <p style="font-size:16px;margin-left:840px;margin-top:-65px;color:#C8E6D9; -webkit-user-select:none;position:absolute;">Developer Team</p></a>
					   </div>
					   <div class="copyright">
					   <p style="height=20px;width:200vh;margin-top:70px;text-align:center;">Copyright © 2018 LMRC LITE WEB TEAM. All Rights Reserved.</p>
					   </div>
					   </section>
					   
					  
					    <div class="share" style="-webkit-font-smoothing: antialiased;">
					   <ul>
					   <p  style="font-size:10px;-webkit-user-select:none;" > Follow Us!</p>
					   
					   <li style="background:#3b5998;"><a href="http://facebook.com/lucknowmetrorail/" style="color:white;"><i class="fa fa-facebook"></i></a></li>
					   <li style="background:#00aced;"><a href="https://twitter.com/Lucknow_Metro/"style="color:white;"><i class="fa fa-twitter"></i></li>
					   <li style="background:#dd4b39;"><a href="https://www.instagram.com/lucknowmetro/"style="color:white;"><i class="fa fa-instagram"></i></li>
					   <li style="background:#007bb6;"><a href="https://www.linkedin.com/company/27819734/"style="color:white;"><i class="fa fa-linkedin"></i></li>
					   <li style="background:#cb2017;"><a href="http://www.pintrset.com/"style="color:white;"><i class="fa fa-pinterest"></i></li>
					   <li style="background:#42C071;"><a href="http://www.google-plus.com/"style="color:white;"><i class="fa fa-google-plus"></i></li>
					   </ul>
					   </div>
		 
		 
		 </section>	 
		 
      </body>
  
</html>