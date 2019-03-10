<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>
</head>
<body>

<h3 align="center">Forgot Password</h3>

<div class="container">
    <form action="Forg.jsp" method="post">
    <label for="fname"><b>Full Name</b></label>
    <input type="text" id="fname" name="fname" placeholder="Your name.." required>

    <label for="sq"><b>Security Question</b></label>
    <select id="sq" name="sq">
      <option value="nickname">What is your Nick Name ?</option>
         <option value="mothertongue">What is your Mother Tongue ?</option>
         <option value="favfood">What is your Favorite Food ?</option>
         <option value="favcol">What is your Favorite Color ?</option>
         <option value="favtea">Who was your Favorite Teacher ?</option>
         <option value="favsub">Which is your Favorite Subject ?</option>
         <option value="favcric">Who is your Favorite Cricket Player ?</option>
    </select>
     
      <label for="ans"><b>Answer</b></label>
      <input type="text" placeholder="Enter Your Answer Here" name="ans" required>
      
    <% String message = (String)request.getAttribute("alertMsg");
                if(message!=null){
                    out.print("<b>"+message+"</b></br></br>");
                    }
                %>

    <input type="submit" value="Retrive Your Password">
  </form>
</div>

</body>
</html>
