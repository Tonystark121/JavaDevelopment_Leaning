package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

class ConnectDB{
    public String getDetail(int id){

        System.out.println("🔹 Starting JDBC Connection...");

        final String URL = "jdbc:postgresql://localhost:5432/testdb";
        final String userName = "postgres";
        final String userPassword = "rajeev";
        final String query = "select * from student where id = ?";

        try {
            Class.forName("org.postgresql.Driver");

            System.out.println("✅ Driver Loaded!");

            Connection con = DriverManager.getConnection(URL, userName, userPassword);

            PreparedStatement st = con.prepareStatement(query);
            st.setInt(1, id);

            ResultSet rs = st.executeQuery();
            
            String result = "";

            if(rs.next()){
                int studentID = rs.getInt("id");
                String studentName = rs.getString("name");
                int studentAge = rs.getInt("age");

                result = "ID: " + studentID + ", Name: " + studentName + ", Age: " + studentAge;

            }
            rs.close();
            st.close();
            con.close();
            System.out.println("✅ Connection Closed.");

            return result;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return "";
    }
}

public class FetchDetails {
    public static void main(String[] args) {
        ConnectDB db = new ConnectDB();
        String result = db.getDetail(13);

        System.out.println(result);
    }
}
