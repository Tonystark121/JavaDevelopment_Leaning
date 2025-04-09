<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP Learning</title>
</head>
<body background="blue">
     <% 
     
     int firstValue = Integer.parseInt(request.getParameter("first"));
     int secondValue = Integer.parseInt(request.getParameter("second"));

     // Calculate the sum of the values
     int totalSum = firstValue + secondValue;

     
     out.println("The total Sum obtained: " +totalSum)
     
     %>
</body>
</html>