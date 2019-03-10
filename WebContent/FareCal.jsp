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

<h3 align="center">Fare Calculator</h3>

<div class="container">
    <form action="Fare.jsp" method="post">
    

    <label for="from"><b>From</b></label>
    <select id="from" name="from">
     <option value="from" style="display:none;" selected="selected">Select Source *</option>

                                                
                                                <option value="4">Alambagh</option>

                                                
                                                <option value="5">Alambagh Bus Station</option>

                                                
                                                <option value="8">Charbagh</option>

                                                
                                                <option value="7">Durgapuri</option>

                                                
                                                <option value="2">Krishna Nagar</option>

                                                
                                                <option value="6">Mawaiya</option>

                                                
                                                <option value="3">Singar Nagar</option>

                                                
                                                <option value="1">Transport Nagar</option>
     
    </select>
     
      
      <label for="to"><b>To</b></label>
    <select id="to" name="to">
      <option value="to" style="display:none;" >Select Destination *</option>

                                            
                                            <option value="4">Alambagh</option>

                                            
                                            <option value="5">Alambagh Bus Station</option>

                                            
                                            <option value="8">Charbagh</option>

                                            
                                            <option value="7">Durgapuri</option>

                                            
                                            <option value="2">Krishna Nagar</option>

                                            
                                            <option value="6">Mawaiya</option>

                                            
                                            <option value="3">Singar Nagar</option>

                                            
                                            <option value="1">Transport Nagar</option>
        
    </select>

              <% String message = (String)request.getAttribute("alertMsg");
                if(message!=null){
                    out.print("<b>"+message+"</b></br></br>");
                    }
                %>
    <input type="submit" value="Get Fare">
  </form>
</div>

</body>
</html>
