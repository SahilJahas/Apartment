<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <meta charset="utf-8">
        <title>LOFT CITY | Responsive Travel & Tourism Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicons -->
        <link href="img/favicon.ico" rel="icon">
        <link href="img/apple-favicon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,700|Raleway:100,200,300,400,500,600,700,800,900" rel="stylesheet">

        <!-- Vendor CSS File -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="vendor/slick/slick.css" rel="stylesheet">
        <link href="vendor/slick/slick-theme.css" rel="stylesheet">
        <link href="vendor/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Main Stylesheet File -->
        <link href="css/hover-style.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <!-- Main Stylesheet File -->
    <link href="css/style.css" rel="stylesheet">

    <!-- Custom CSS to Ensure Footer Sticks to Bottom -->
    <style>
        html, body {
            height: 100%;
            margin: 0;
            display: flex;
            flex-direction: column;
        }

        #footer {
            margin-top: auto;
        }
    </style>


<body>
    <!-- Header Section Start -->
    <header id="header">
        <a href="index.html" class="logo"><img src="img/logo.png" alt="logo"></a>
        <div class="phone"><i class="fa fa-phone"></i>+1 234 567 8900</div>
        <div class="mobile-menu-btn"><i class="fa fa-bars"></i></div>
        <nav class="main-menu top-menu">
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="about.html">About Us</a></li>
                <li><a href="room.html">Apartments</a></li>
                <li><a href="amenities.html">Amenities</a></li>
                <li><a href="booking.jsp">Booking</a></li>
                <li class="active"><a href="login.html">Login</a></li>
                <li><a href="contact.html">Contact Us</a></li>
            </ul>
        </nav>
    </header>    
    <!-- Header Section End -->


    <div class="container my-5">
        <div class="row">
            <div class="col-lg-8 mx-auto">
                <div class="card shadow-lg">
                    <div class="card-header bg-primary text-white text-center">
                        <h2>Update Booking</h2>
                    </div>
                    <div class="card-body">
                        <% 
                            String id = request.getParameter("id");
                            String firstName = request.getParameter("first_name");
                            String lastName = request.getParameter("last_name");
                            String mobile = request.getParameter("mobile");
                            String email = request.getParameter("email");
                            String checkIn = request.getParameter("check_in");
                            String checkOut = request.getParameter("check_out");
                            String adultCount = request.getParameter("adult_count");
                            String kidCount = request.getParameter("kid_count");
                            String roomType = request.getParameter("room_type");
                            String numRooms = request.getParameter("num_rooms");

                            if (id != null && !firstName.isEmpty() && !lastName.isEmpty() && !mobile.isEmpty() && !email.isEmpty() && 
                                !checkIn.isEmpty() && !checkOut.isEmpty() && !adultCount.isEmpty() && !kidCount.isEmpty() && 
                                !roomType.isEmpty() && !numRooms.isEmpty()) {

                                Connection conn = null;
                                PreparedStatement stmt = null;

                                String url = "jdbc:mysql://localhost:3306/apartment?useUnicode=true&characterEncoding=UTF-8";
                                String dbUser = "root";
                                String dbPassword = "";

                                try {
                                    // Ensure the driver is loaded
                                    Class.forName("com.mysql.cj.jdbc.Driver");
                                    conn = DriverManager.getConnection(url, dbUser, dbPassword);

                                    // SQL query to update the booking
                                    String sql = "UPDATE bookings SET first_name = ?, last_name = ?, mobile = ?, email = ?, check_in = ?, " +
                                                 "check_out = ?, adult_count = ?, kid_count = ?, room_type = ?, num_rooms = ? WHERE id = ?";
                                    stmt = conn.prepareStatement(sql);

                                    stmt.setString(1, firstName);
                                    stmt.setString(2, lastName);
                                    stmt.setString(3, mobile);
                                    stmt.setString(4, email);
                                    stmt.setString(5, checkIn);
                                    stmt.setString(6, checkOut);
                                    stmt.setInt(7, Integer.parseInt(adultCount));
                                    stmt.setInt(8, Integer.parseInt(kidCount));
                                    stmt.setString(9, roomType);
                                    stmt.setInt(10, Integer.parseInt(numRooms));
                                    stmt.setInt(11, Integer.parseInt(id));

                                    int rowsUpdated = stmt.executeUpdate();

                                    if (rowsUpdated > 0) {
                                        out.println("<div class='alert alert-success text-center'>Booking updated successfully!</div>");
                                    } else {
                                        out.println("<div class='alert alert-danger text-center'>Error: Booking not found or no changes were made.</div>");
                                    }

                                } catch (Exception e) {
                                    e.printStackTrace();
                                    out.println("<div class='alert alert-danger text-center'>Error: " + e.getMessage() + "</div>");
                                } finally {
                                    try {
                                        if (stmt != null) stmt.close();
                                        if (conn != null) conn.close();
                                    } catch (SQLException se) {
                                        se.printStackTrace();
                                    }
                                }
                            } else {
                                out.println("<div class='alert alert-warning text-center'>All fields are required!</div>");
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer Section Start -->
    <div id="footer" class="bg-dark text-white py-4">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <div class="social mb-3">
                        <a href="https://instagram.com/yourprofile" target="_blank"><i class="fa fa-instagram mx-2"></i></a>
                        <a href="https://twitter.com/yourprofile" target="_blank"><i class="fa fa-twitter mx-2"></i></a>
                        <a href="https://facebook.com/yourprofile" target="_blank"><i class="fa fa-facebook-f mx-2"></i></a>
                    </div>
                    <ul class="nav justify-content-center">
                        <li class="nav-item"><a class="nav-link text-white" href="#">Home</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="#">About</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="#">Terms</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="#">Contact</a></li>
                    </ul>
                    <p class="mt-3">&copy; <a href="https://htmlcodex.com" class="text-white">HTML Codex</a> All Rights Reserved.</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer Section End -->

    <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

    <!-- Vendor JavaScript Files -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
