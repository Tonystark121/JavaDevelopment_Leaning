package connection;
import java.sql.*; 

public class JDBC {
    public static void main(String[] args) {

        System.out.println("🔹 Starting JDBC Connection...");

        final String URL = "jdbc:postgresql://localhost:5432/testdb";
        final String userName = "postgres";
        final String userPassword = "rajeev";
        final String query = "insert into employees values(?,?,?,?,?,?)";

        // Class.forName("com.mysql.jdbc.Driver");
        try {
            Class.forName("org.postgresql.Driver");

            System.out.println("✅ Driver Loaded!");

            Connection con = DriverManager.getConnection(URL, userName, userPassword);

            // The use of this is not recommended as shouting your order loudly, and if someone mishears it, you get the wrong food (SQL Injection risk).
            // Statement st = con.createStatement();

            // Instead this use PreparedStatement is a better way, PreparedStatement pstmt = con.prepareStatement("SELECT * FROM employees WHERE emp_id = ?");
            // pstmt.setInt(1, 101);

            PreparedStatement st = con.prepareStatement(query);
            st.setString(1,"E10");
            st.setString(2, "Rajeev Kumar Gupta");
            st.setInt(3, 3000);
            st.setString(4, "D6");
            st.setString(5, "M6");
            st.setString(6, "Software Engineering");
            // ResultSet rs = st.executeQuery(query);

            // int count = st.executeUpdate(query);

            int count = st.executeUpdate();
    
            // while (rs.next()) {
            //     String name = rs.getString("emp_name");
            //     System.out.println("🔹 Employee Name: " + name);
            // }

            System.out.println("🔹 Number of Rows affected: " + count);
    
            st.close();
            con.close();

            System.out.println("✅ Connection Closed.");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
