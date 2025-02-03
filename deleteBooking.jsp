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
                    <div class="card-header bg-danger text-white text-center">
                        <h2>Cancel Booking</h2>
                    </div>
                    <div class="card-body">
                        <%
    // Get booking ID from the form submission
    String bookingId = request.getParameter("id");

    if (bookingId != null && !bookingId.isEmpty()) {
        try {
            int id = Integer.parseInt(bookingId); // Parse the ID to an integer
            Connection conn = null;
            PreparedStatement stmt = null;
            String url = "jdbc:mysql://localhost:3306/apartment?useUnicode=true&characterEncoding=UTF-8";
            String dbUser = "root";
            String dbPassword = "";

            try {
                // Ensure the driver is loaded
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(url, dbUser, dbPassword);

                // Prepare SQL query to delete the booking
                String sql = "DELETE FROM bookings WHERE id = ?";
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, id);

                // Execute the query and check if the deletion was successful
                int rowsAffected = stmt.executeUpdate();
                if (rowsAffected > 0) {
                    out.println("<div class='alert alert-success text-center'>Booking Cancelled successfully!</div>");
                } else {
                    out.println("<div class='alert alert-danger text-center'>Booking not found. Please try again.</div>");
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
        } catch (NumberFormatException e) {
            out.println("<div class='alert alert-danger text-center'>Invalid booking ID format.</div>");
        }
    } else {
        out.println("<div class='alert alert-danger text-center'>Invalid booking ID.</div>");
    }
%>

                        <div class="text-center">
                            <a href="index.html" class="btn btn-primary">Go Back to Home</a>
                            <a href="booking.jsp" class="btn btn-secondary">Go Back to Booking</a>
                        </div>
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
    <script src="vendor/slick/slick.min.js"></script>
    <script src="vendor/tempusdominus/js/moment.min.js"></script>
    <script src="vendor/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

</body>
</html>
