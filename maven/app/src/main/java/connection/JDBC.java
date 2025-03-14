package connection;
import java.sql.*; 

public class JDBC {
    public static void main(String[] args) {

        System.out.println("🔹 Starting JDBC Connection...");

        final String URL = "jdbc:postgresql://localhost:5432/testdb";
        final String userName = "postgres";
        final String userPassword = "rajeev";
        final String query = "select emp_name from employees";

        // Class.forName("com.mysql.jdbc.Driver");
        try {
            Class.forName("org.postgresql.Driver");

            System.out.println("✅ Driver Loaded!");

            Connection con = DriverManager.getConnection(URL, userName, userPassword);

            Statement st = con.createStatement();
    
            ResultSet rs = st.executeQuery(query);
    
            while (rs.next()) {
                String name = rs.getString("emp_name");
                System.out.println("🔹 Employee Name: " + name);
            }
    
            st.close();
            con.close();

            System.out.println("✅ Connection Closed.");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
