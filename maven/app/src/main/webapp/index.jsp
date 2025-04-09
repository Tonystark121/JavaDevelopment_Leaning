<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" errorPage="error.jsp" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>JSP Learning Website</title>
  </head>
  <body bgcolor="blue" text="white">
    
    <h1>Welcome to the Home Page!</h1>
    
    <jsp:include page="home.jsp" />
    
  </body>
</html>
