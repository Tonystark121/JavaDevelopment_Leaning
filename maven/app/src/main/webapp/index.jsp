<%@page language="java" contentType="text/html"; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>JSP Learning</title>
  </head>
  <body bgcolor="blue" text="white">

    <%! int coff = 3; %>

    <% int firstValue = Integer.parseInt(request.getParameter("first")); int
    secondValue = Integer.parseInt(request.getParameter("second")); int totalSum
    = firstValue + secondValue; %>

    <!-- Output the total sum -->
    <h1>The sum is: <%= totalSum %></h1>

    <h2 >The equation of line is: <%= coff %>X +  <%= totalSum %></h2>
    
  </body>
</html>
