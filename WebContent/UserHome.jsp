<!DOCTYPE HTML>
<html Lang="en">
     <head>
      <meta charset="utf-8">
      <title>Lucknow Metro Rail Corporation - Website Of LMRC</title>
       <link rel="icon" style="font-size:30px;" href="title_logo.png" type="image/x-icon">
      <link href="https://fonts.googleapis.com/css?family=Crimson+Text" rel="stylesheet">
      <link rel="stylesheet" href="normalize.css">
	  <link rel="stylesheet" href="custom.css">
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
     </head>

     <body>
         <section class="hero">
		 <section class="head" style="height:155px;width:200vh;background-color:white;">
         <div class="image1"><img class = "image1" src ="res/lmrc.png"></div><div class="image2"><img class = "image2" src ="res/Swachh_Bharat_Logo.png"></div>
	     </section>
		 <div class="h1"><marquee>
	     <h1>WELCOME TO LUCKNOW METRO RAIL CORPORATION LIMITED (LMRCL) LITE WEBSITE!</h1>
		  </marquee>
		</div>
		<%@ page import="java.sql.*"%>
	    <%@ page import="javax.sql.*"%>
	        <%  String uname = (String)request.getAttribute("username");
	            session.setAttribute("uname", uname);
                if(uname!=null){
                out.print("<div align=\"center\"><br/><br/><h1><b>Welcome "+uname+"</b></h1></div>");
                }
                else {
                	 %>
                     <jsp:forward page="index.jsp"></jsp:forward>
                  <%
                    }
                %>	 
	             <section class="second">
	             <div class="slider"></div>
				 <div class="login">
				 <div class="LOG_IN" ><a class="btn homn_btn" style="width:97.8%; margin:5px;" href="Reqsc.jsp?uname=${uname}">

                               <i class="fa fa-address-card" style="COLOR:WHITE;font-size:30px;"></i> Request GoSmart Card
                               

                              </a></div>
				 <div class="SIGN_UP"><a class="btn homn_btn" style="width:97.8%; margin:5px;" href="RechargeYourSmartMetroCard.jsp">

                               <i class="fa fa-bank" style="COLOR:WHITE;font-size:30px;"></i> Recharge GoSmart Card
                               

                              </a></div>
				 <div class="FARE & TICKETS"><a class="btn homn_btn" style="width:97.8%; margin:5px;" href="CheckYourSmartMetroCardBalance.jsp">

                               <i class="fa fa-inr" style="COLOR:WHITE;font-size:30px;"></i> Check Your Card Balance
                               

                              </a></div>
							  <div class="FARE CaLCULATOR"><a class="btn homn_btn" style="width:97.8%; margin:5px;" href="FareCal.jsp">

                               <i class="fa fa-calculator" style="COLOR:WHITE;font-size:30px;"></i> FARE CALCULATOR
                               

                              </a></div>
			             	 <div class="REGISTER GOSMART CARD"><a class="btn homn_btn" style="width:97.8%; margin:5px;" href="logout.jsp">

                               <i class="fa fa-address-card" style="COLOR:WHITE;font-size:30px;" ></i> Log Out
                               

                              </a></div>
				 
				 </div>
				
				 
			     </section>
				 
				 
		             <section class="middle">
	                   <div class="MD_msg" style="padding-top:8px;">
					   
					   <div class="h2">
					   <h2>MANAGING DIRECTOR'S MESSAGE</h2>
					   <div class="director"><img class= "dicrectorimage" src = "res/md1.jpg">
					   </div>
	
					   <div class="h3"><h1>Sri Kumar Keshav</h1>
					   </div>
					   <div class="h3">
					   <h4>(Managing Director)</h4>
					   </div>
					   <div class="h5">
					   <h3><br/>I am extremely happy that Lucknow Metro, a Special Purpose Vehicle (SPV), constituted by the Government of India and Government of Uttar Pradesh has accomplished its target and has started its commercial run for the people of Lucknow. This is one of the most ambitious Mass Rapid Transit System (MRTS) projects of the Government which has been executed and operated well within the sanctioned budget and within an extremely compressed deadline.</h3>
					   </div>
					   </div>
					   
					   
					   <div class="content" style="margin-top: -415px;margin-left:700px;height:600px;width:440px;">

					    <a href="CheckMetroSchedule.jsp" class="button-hover" style="height:45px;width:400px;margin-top:8px;background-image:url(res/schedule.jpg)"> 
					    <i class="fa fa-calendar-check-o" style="font-size:40px;magin-left:50px;"> </i><span style="margin-left:20px;">Check Schedule </span></a>
						<a href="PlanMyTrip.jsp" class="button-hover1" style="height:45px;width:400px;margin-top:8px;background-image:url(res/newss.jpg);">
						 <i class="fa fa-taxi" style="font-size:40px;magin-left:50px;"> </i><span style="margin-left:20px;">Plan My Trip </span></a>
                        <a href="FileComplaint.jsp" class="button-hover2" style="height:45px;width:400px;margin-top:8px;background-image:url(res/download.jpg)">
                        <i class="fa fa-pencil-square-o" style="font-size:40px;magin-left:50px;"> </i><span style="margin-left:20px;">File A Complaint</span></a>
                        <a href="YourJourneyHistory.jsp" class=" button-hover3" style="height:45px;width:400px;margin-top:8px;background-image:url(res/lmrc-jobs-copy.jpg)">
                        <i class="fa fa-history" style="magin-left:50px;font-size:40px;"> </i><span style="margin-left:20px;">Your Journey History</span></a>

                               </div>
					   
					   
					   </div>
					   
					   
					   </section>
					   
					   <section class="route_map">
					   
					   <div class="route_map">
					  <img src="res/map-view.gif"  style="max-width:210%; border:1px solid;border-radius:.5rem;border-color:red;-webkit-user-select:none;"> 
					   </div>
					
					   </section>
					   <section class="">
					   <div class="sites">
					   <p style="font-size:32px;margin-left:445px;margin-top:550px;color:red; -webkit-user-select:none;">Other Usefull Sites</p>
                       <div class="sitesslider"></div>
             			</div>
						</section>
					   
					   <section class="foot">
					   <div class="footer"> <div class="h6"><h6 style="margin-top:30px; font-size:19px;">LET'S STAY IN TOUCH</h6><h6 style="margin-top:-35px; pointer-size:10px;">( Get updates on important informations and more )</h6>
					   <form class="emailid">
		                 <input class="email" type="text" style="border:0.5px solid; border-color:#935B5B; position:relative" placeholder="Enter Email Address">
						 <i class="fa fa-envelope fa-lg fa-fw" style="margin-left:250px; position:absolute; font-size:22px; color:blue; margin-top:-24px;"></i>
		               </form>
					   </div>
					   
					   <p style="margin-left:680px;color:white;font-size:21px;margin-top:-80px;position:absolute; -webkit-user-select:none;">ABOUT</p>
					   <p style="margin-left:860px;font-size:21px;margin-top:-80px;color:white; -webkit-user-select:none;">CONTACT US</p>
					   <p style="font-size:35px;margin-left:1100px;margin-top:-10px;color:white; -webkit-user-select:none;">0522-2288869</p>
					   <p style="font-size:20px;margin-left:1138px;margin-top:-60px;color:white; -webkit-user-select:none;">LMRC Helpline</p>
					   <p style="font-size:18px;margin-left:1080px;margin-top:25px;color:#FEE2B6; -webkit-user-select:none;">[9:30 AM to 6:00 PM (Mon-Sat)]</p>
					  
					  <p style="font-size:19px;margin-left:680px;margin-top:-75px;color:#C8E6D9; -webkit-user-select:none;">LMRC</p>
					   <p style="font-size:19px;margin-left:680px;margin-top:-19px;color:#C8E6D9; -webkit-user-select:none;">Developers</p>
					   <p style="font-size:19px;margin-left:680px;margin-top:-16px;color:#C8E6D9; -webkit-user-select:none;">Privacy Policy</p>
					   <p style="font-size:19px;margin-left:863px;margin-top:-87px;color:#C8E6D9; -webkit-user-select:none;">Developer Team</p>
					   </div>
					   <div class="copyright">
					   <p style="height=20px;width:200vh;margin-top:-30px;text-align:center;">Copyright © 2018 LMRC LITE WEB TEAM. All Rights Reserved.</p>
					   </div>
					   </section>
					    <div class="share" style="-webkit-font-smoothing: antialiased;">
					   <ul>
					   <p  style="font-size:10px;-webkit-user-select:none;" > Follow Us!</p>
					   <li><i class="fa fa-facebook"></i></li>
					   <li><i class="fa fa-twitter"></i></li>
					   <li><i class="fa fa-instagram"></i></li>
					   <li><i class="fa fa-linkedin"></i></li>
					   <li><i class="fa fa-pinterest"></i></li>
					   <li><i class="fa fa-google-plus"></i></li>
					   </ul>
					   </div>
					    </section>
        </body>

</html>