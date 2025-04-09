package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hello")  
public class HelloServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

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

        // HttpSession session = request.getSession();
        // session.setAttribute("totalSum", totalSum);

        // response.sendRedirect("square"); // this is URL rewriting method as we are manupulating the URL.


        // This is redirect method using Cookie.

        // should be passed as string.
        Cookie cookie = new Cookie("totalSum", totalSum + "");

        response.addCookie(cookie);


        // using redirect method.
        response.sendRedirect("square");


        // Using servlet config and and servlet context.

        // ServletContext ctx = getServletContext();
        // String name =  ctx.getInitParameter("name");

        // PrintWriter out = response.getWriter();
        // out.println(name);


        // using servletConfig.

        ServletConfig con = getServletConfig();

        String salary = con.getInitParameter("salary");

        System.err.println("The salary is :" + salary);

        PrintWriter out = response.getWriter();

        out.println(salary);
    }
}
