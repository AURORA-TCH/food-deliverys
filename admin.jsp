<%@ page import="java.sql.*, javax.sql.*, java.util.*" %>
<%
   

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        // Set up the connection to the database
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "Pjtg.admw1");

        // Query to fetch orders from the orders table
        String orderQuery = "SELECT * FROM orders"; // Assuming the table name is 'orders'
        pstmt = conn.prepareStatement(orderQuery);
        rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Food Delivery Orders</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        .button {
            padding: 5px 10px;
            text-decoration: none;
            color: white;
            background-color: green;
            border-radius: 5px;
        }
        .delete-button {
            background-color: red;
        }
    </style>
</head>
<body>
    <h1>Admin Food Delivery Orders</h1>
    <table>
        <thead>
            <tr>
                <th>Order ID</th>
                <th>Name</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Address</th>
                <th>Food Items</th>
                <th>Total Price</th>
                <th>Order Date</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <% 
                while (rs.next()) {
                    int orderId = rs.getInt("id");
                    String name = rs.getString("name");
                    String phone = rs.getString("phone");
                    String email = rs.getString("email");
                    String address = rs.getString("address");
                    String foodItems = rs.getString("food_items");
                    double totalPrice = rs.getDouble("total_price");
                    Timestamp orderDate = rs.getTimestamp("order_date");
            %>
                <tr>
                    <td><%= orderId %></td>
                    <td><%= name %></td>
                    <td><%= phone %></td>
                    <td><%= email %></td>
                    <td><%= address %></td>
                    <td><%= foodItems %></td>
                    <td><%= totalPrice %></td>
                    <td><%= orderDate %></td>
                    <td>
                        <%-- Accept and Delete buttons for each order --%>
                        <a href="adminAction.jsp?action=accept&orderId=<%= orderId %>" class="button">Accept</a>
                        <a href="adminAction.jsp?action=delete&orderId=<%= orderId %>" class="button delete-button">Delete</a>
                    </td>
                </tr>
            <% 
                }
            %>
        </tbody>
    </table>
</body>
</html>
<%
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<script>alert('Error: " + e.getMessage() + "');</script>");
    } finally {
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
