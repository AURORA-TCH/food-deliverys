<%@ page import="java.sql.*, javax.sql.*" %>
<%
    String orderId = request.getParameter("orderId");
    String action = request.getParameter("action");

    if (orderId == null || action == null) {
        out.println("<script>alert('Invalid parameters!'); window.location = 'adminOrders.jsp';</script>");
        return;
    }

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // Load the JDBC driver and connect to the database
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "Pjtg.admw1");

        // Handle the action based on the request
        if ("accept".equals(action)) {
            String updateQuery = "UPDATE orders SET status = 'Accepted' WHERE id = ?";
            pstmt = conn.prepareStatement(updateQuery);
            pstmt.setInt(1, Integer.parseInt(orderId));
            int rowsUpdated = pstmt.executeUpdate();
            if (rowsUpdated > 0) {
                out.println("<script>alert('Order Accepted!'); window.location = 'adminOrders.jsp';</script>");
            } else {
                out.println("<script>alert('Order not found or already updated!'); window.location = 'adminOrders.jsp';</script>");
            }
        } else if ("delete".equals(action)) {
            String deleteQuery = "DELETE FROM orders WHERE id = ?";
            pstmt = conn.prepareStatement(deleteQuery);
            pstmt.setInt(1, Integer.parseInt(orderId));
            int rowsDeleted = pstmt.executeUpdate();
            if (rowsDeleted > 0) {
                out.println("<script>alert('Order Deleted!'); window.location = 'admin.jsp';</script>");
            } else {
                out.println("<script>alert('Order not found!'); window.location = 'admin.jsp';</script>");
            }
        } else {
            out.println("<script>alert('Invalid action!'); window.location = 'admin.jsp';</script>");
        }

    } catch (Exception e) {
        out.println("<script>alert('Error: " + e.getMessage() + "'); window.location = 'adminOrders.jsp';</script>");
        e.printStackTrace();  // Optionally log this error to a file
    } finally {
        // Ensure resources are closed
        try {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace(); // Optionally log this error as well
        }
    }
%>
