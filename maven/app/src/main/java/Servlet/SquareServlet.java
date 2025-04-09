package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/square")
public class SquareServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException{

        // System.out.println("This is a square method");

        // int totalSum = (int)(request.getAttribute("totalSum"));

        // totalSum *= totalSum;

        // PrintWriter out = response.getWriter();
        // out.println("Let's get the square of the sum of inputted value.");

        // out.println("The value of square of sum of values : " + totalSum);


        // This is for redirect Method using HttpSession.

        // instance of Session
        // HttpSession session = request.getSession();

        // session.removeAttribute('totalSum'); using this we can delete the stored data in session.

        // int totalSum = (int)session.getAttribute("totalSum");

        // int totalSum = Integer.parseInt(request.getParameter("totalSum"));

        // totalSum*=totalSum;

        // PrintWriter out = response.getWriter();

        // out.println("Square of total sum is: " + totalSum);


        
        // This is redirect method using Cookie.

        int totalSum = 0;

        Cookie cookies[] = request.getCookies();

        for(Cookie c: cookies){
            if(c.getName().equals("totalSum")){
                totalSum = Integer.parseInt(c.getValue());
            }
        }

        totalSum *= totalSum;

        PrintWriter out = response.getWriter();

        out.println("The square of sum of two numbers are: " + totalSum);

        // ServletContext ctx = getServletContext();
        // String name =  ctx.getInitParameter("name");

        // out.println(name);

    }
}
