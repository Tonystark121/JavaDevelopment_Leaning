<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Database Connection</title>
</head>
<body>

<%
    final String url = "jdbc:postgresql://localhost:5432/testdb";
    final String userName = "postgres";
    final String userPassword = "rajeev";

    try {
        String sql = "SELECT * FROM student WHERE id=2";

        Class.forName("org.postgresql.Driver");

        Connection conn = DriverManager.getConnection(url, userName, userPassword);
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(sql);

        if (rs.next()) {
%>
            <p>Student ID: <%= rs.getString(1) %></p>
            <p>Student Name: <%= rs.getString(2) %></p>
            <p>Student Age: <%= rs.getString(3) %></p>
<%
        } else {
%>
            <p>No student found with ID 1.</p>
<%
        }

        rs.close();
        st.close();
        conn.close();

    } catch (Exception e) {
%>
        <p>Error found: <%= e.getMessage() %></p>
<%
    }
%>

</body>
</html>
