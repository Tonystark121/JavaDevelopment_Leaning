package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/hello")  
public class HelloServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

       // Corrected: Get "first" and "second" parameters from the request
       int firstValue = Integer.parseInt(request.getParameter("first"));
       int secondValue = Integer.parseInt(request.getParameter("second"));

       System.out.println("The inputted values: " + firstValue + " " + secondValue);

       // Calculate the sum of the values
       int totalSum = firstValue + secondValue;

       System.out.println("Total of Input: " + totalSum);

    //    // Setting the content type for the response
    //    response.setContentType("text/html");

    //    // Writing the output to the response
    //    response.getWriter().println("<h1>Hello, Servlet!</h1>");
    //    response.getWriter().println("Sum of the values is: " + totalSum);


    // Let's try to call another servlet from here.

        // RequestDispatcher rd = request.getRequestDispatcher("square");

        // request.setAttribute("totalSum", totalSum);

        // rd.forward(request, response);


        // Let's try Redirect method.

        HttpSession session = request.getSession();
        session.setAttribute("totalSum", totalSum);

        response.sendRedirect("square"); // this is URL rewriting method as we are manupulating the URL.
    }
}
