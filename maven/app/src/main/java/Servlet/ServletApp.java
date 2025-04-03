package Servlet;

import java.nio.file.Paths;

import org.apache.catalina.startup.Tomcat;

public class ServletApp {
    public static void main(String[] args) throws Exception {
        // Create an embedded Tomcat server
        Tomcat tomcat = new Tomcat();
        
        // Set the base directory for Tomcat
        tomcat.setBaseDir(Paths.get("tomcat").toAbsolutePath().toString());
        
        // Set the HTTP connector (default is port 8080)
        tomcat.getConnector();
        
        // Add the webapp context (your servlet will be deployed here)
        tomcat.addWebapp("/", Paths.get("src/main/webapp").toAbsolutePath().toString());
        
        // Start the Tomcat server
        tomcat.start();
        
        // Keep the server running
        tomcat.getServer().await();
    }
}
