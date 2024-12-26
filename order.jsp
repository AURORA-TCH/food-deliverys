<%@ page language="java" import="java.sql.*, java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Food Delivery Website</title>
    
    <!-- Favicon -->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.css">
    <!-- Hover CSS -->
    <link rel="stylesheet" href="css/hover-min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <!-- Navigation Section Start -->
    <header class="navbar">
        <nav id="site-top-nav" class="navbar-menu navbar-fixed-top">
            <div class="container">
                <!-- logo -->
                <div class="logo">
                    <a href="index.jsp" title="Logo">
                        <img src="img/logo.png" alt="Logo" class="img-responsive">
                    </a>
                </div>
                <!-- Main Menu -->
                <div class="menu text-right">
                    <ul>
                        <li><a class="hvr-underline-from-center" href="index.jsp">Home</a></li>
                        <li><a class="hvr-underline-from-center" href="categories.jsp">Categories</a></li>
                        <li><a class="hvr-underline-from-center" href="foods.jsp">Foods</a></li>
                        <li><a class="hvr-underline-from-center" href="order.jsp">Order</a></li>
                        <li><a class="hvr-underline-from-center" href="contact.jsp">Contact</a></li>
                        <li><a class="hvr-underline-from-center" href="login.jsp">Login</a></li>
                        <li>
                            <a id="shopping-cart" class="shopping-cart">
                                <i class="fa fa-cart-arrow-down"></i>
                                <span class="badge">4</span>
                            </a>
                            <div id="cart-content" class="cart-content">
                                <h3 class="text-center">Shopping Cart</h3>
                                  <div class="container">
            <h2 class="text-center">Fill this form to confirm your order.</h2>
            <table class="tbl-full" border="0">
                <tr>
                    <th>S.N.</th>
                    <th>Food</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Qty</th>
                    <th>Total</th>
                    <th>Action</th>
                </tr>
                <% 
                    Connection con = null;
                    PreparedStatement pst = null;
                    ResultSet rs = null;
                    int serialNumber = 1;

                    try {
                        // Database connection
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "Pjtg.admw1");

                        // SQL Query
                        String query = "SELECT * FROM food_item";
                        pst = con.prepareStatement(query);
                        rs = pst.executeQuery();

                        // Loop through result set
                        while (rs.next()) {
                            int id = rs.getInt("id");
                            String name = rs.getString("name");
                            double price = rs.getDouble("price");
                            int qty = rs.getInt("qty");
                            String action = rs.getString("action");
                            double total = price * qty;
                %>
                <tr>
                    <td><%= serialNumber++ %></td>
                    <td><img src="img/food/<%= id %>.jpg" alt="<%= name %>"></td>
                    <td><%= name %></td>
                    <td>$ <%= String.format("%.2f", price) %></td>
                    <td><%= qty %></td>
                    <td>$ <%= String.format("%.2f", total) %></td>
                    <td><a href="<%= action %>" class="btn-delete">&times;</a></td>
                </tr>
                <%      
                        } // End of while
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        // Close resources
                        if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
                        if (pst != null) try { pst.close(); } catch (SQLException ignore) {}
                        if (con != null) try { con.close(); } catch (SQLException ignore) {}
                    }
                %>
            </table>
        </div>
                                <a href="order.jsp" class="btn-primary">Confirm Order</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <!-- Navigation Section End -->

    <!-- Food Order Section Start -->
    <section class="order">
          <div class="container">
            <h2 class="text-center">Fill this form to confirm your order.</h2>
            <table class="tbl-full" border="0">
                <tr>
                    <th>S.N.</th>
                    <th>Food</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Qty</th>
                    <th>Total</th>
                    <th>Action</th>
                </tr>
                <% 

                    try {
                        // Database connection
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "Pjtg.admw1");

                        // SQL Query
                        String query = "SELECT * FROM food_item";
                        pst = con.prepareStatement(query);
                        rs = pst.executeQuery();

                        // Loop through result set
                        while (rs.next()) {
                            int id = rs.getInt("id");
                            String name = rs.getString("name");
                            double price = rs.getDouble("price");
                            int qty = rs.getInt("qty");
                            String action = rs.getString("action");
                            double total = price * qty;
                %>
                <tr>
                    <td><%= serialNumber++ %></td>
                    <td><img src="img/food/<%= id %>.jpg" alt="<%= name %>"></td>
                    <td><%= name %></td>
                    <td>$ <%= String.format("%.2f", price) %></td>
                    <td><%= qty %></td>
                    <td>$ <%= String.format("%.2f", total) %></td>
                    <td><a href="<%= action %>" class="btn-delete">&times;</a></td>
                </tr>
                <%      
                        } // End of while
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        // Close resources
                        if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
                        if (pst != null) try { pst.close(); } catch (SQLException ignore) {}
                        if (con != null) try { con.close(); } catch (SQLException ignore) {}
                    }
                %>
            </table>
        </div>
            <form method="POST" class="form">
                <fieldset>
                    <legend>Delivery Details</legend>
                    <p class="label">Full Name</p>
                    <input type="text" name="name" placeholder="Enter your name..." required>
                    <p class="label">Phone Number</p>
                    <input type="text" name="phone" placeholder="Enter your phone..." required>
                    <p class="label">Email</p>
                    <input type="email" name="email" placeholder="Enter your email..." required>
                    <p class="label">Address</p>
                    <input type="text" name="address" placeholder="Enter your address..." required>
                    <p class="label">Food Item</p>
                    <input type="text" name="foodItems" placeholder="Enter food items..." required>
                    <p class="label">Total Price</p>
                    <input type="text" name="totalPrice" placeholder="Enter total price..." required>
               
                    <input type="submit" value="Confirm Order" class="btn-primary">
                </fieldset>
            </form>
            <%
                if (request.getMethod().equalsIgnoreCase("POST")) {
                    String name = request.getParameter("name");
                    String phone = request.getParameter("phone");
                    String email = request.getParameter("email");
                    String address = request.getParameter("address");
                    String foodItems = request.getParameter("foodItems");
                    String totalPrice = request.getParameter("totalPrice");
                    Connection conn = null;
                    PreparedStatement pstmt = null;

                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "Pjtg.admw1");

                        String query = "INSERT INTO orders (name, phone, email, address, food_items, total_price) VALUES (?, ?, ?, ?, ?, ?)";
                        pstmt = conn.prepareStatement(query);
                        pstmt.setString(1, name);
                        pstmt.setString(2, phone);
                        pstmt.setString(3, email);
                        pstmt.setString(4, address);
                        pstmt.setString(5, foodItems);
                        pstmt.setString(6, totalPrice);
  
                        int rowsInserted = pstmt.executeUpdate();

                        if (rowsInserted > 0) {
                            out.println("<p>Order placed successfully!</p>");
                        } else {
                            out.println("<p>Failed to place the order. Please try again.</p>");
                        }

                    } catch (Exception e) {
                        out.println("<p>Error: " + e.getMessage() + "</p>");
                    } finally {
                        try {
                            if (pstmt != null) pstmt.close();
                            if (conn != null) conn.close();
                        } catch (SQLException e) {
                            out.println("<p>Error closing connection: " + e.getMessage() + "</p>");
                        }
                    }
                }
            %>
        </div>
    </section>
    <!-- Food Order Section End -->

    <!-- Footer Section Start -->
    <section class="footer">
        <div class="container">
            <div class="grid-3">
                <div class="text-center">
                    <h3>About Us</h3><br>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat officia, temporibus expedita dicta eligendi harum architecto fugiat sint, laudantium omnis animi. Voluptas praesentium maiores minima pariatur necessitatibus consequuntur, similique assumenda.</p>
                </div>
                <div class="text-center">
                    <h3>Site Map</h3><br>
                    <div class="site-links">
                        <a href="categories.jsp">Categories</a>
                        <a href="foods.jsp">Foods</a>
                        <a href="order.jsp">Order</a>
                        <a href="contact.jsp">Contact</a>
                        <a href="login.jsp">Login</a>
                    </div>
                </div>
                <div class="social-links">
                    <h3>Social Links</h3><br>
                  <div class="social">
                        <ul>
                            <li><a href="#"><img src="https://img.icons8.com/color/48/null/facebook-new.png"/></a></li>
                            <li><a href="#"><img src="https://img.icons8.com/fluency/48/null/instagram-new.png"/></a></li>
                            <li><a href="#"><img src="https://img.icons8.com/color/48/null/twitter--v1.png"/></a></li>
                            <li><a href="#"><img src="https://img.icons8.com/color/48/null/linkedin-circled--v1.png"/></a></li>
                            <li><a href="#"><img src="https://img.icons8.com/color/48/null/youtube-play.png"/></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Footer Section End -->

    <!-- Copyright Section start -->
    <section class="copyright">
        <div class="container text-center">
            <p>All rights reserved. Design By <a href="#">Code Arcade</a></p>
        </div>
        <a id="back-to-top" class="btn-primary">
            <i class="fa fa-angle-double-up"></i>
        </a>
    </section>
    <!-- Copyright Section End -->

    <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <!-- Jquery UI -->
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    <!-- Custom JS -->
    <script src="js/custom.js"></script>
</body>
</html>