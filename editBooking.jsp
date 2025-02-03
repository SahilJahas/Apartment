<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*, java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <title>Edit Booking | LOFT CITY</title>

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
                        <h2>Edit Booking</h2>
                    </div>
                    <div class="card-body">
                        <%
                            String id = request.getParameter("id");
                            if (id != null && !id.trim().isEmpty()) {
                                Connection conn = null;
                                PreparedStatement stmt = null;
                                ResultSet rs = null;
                                String url = "jdbc:mysql://localhost:3306/apartment?useUnicode=true&characterEncoding=UTF-8";
                                String dbUser = "root";
                                String dbPassword = "";

                                try {
                                    // Ensure the driver is loaded
                                    Class.forName("com.mysql.cj.jdbc.Driver");
                                    conn = DriverManager.getConnection(url, dbUser, dbPassword);

                                    // Retrieve the booking details from the database
                                    String sql = "SELECT * FROM bookings WHERE id = ?";
                                    stmt = conn.prepareStatement(sql);
                                    stmt.setInt(1, Integer.parseInt(id));
                                    rs = stmt.executeQuery();

                                    if (rs.next()) {
                                        // Fetch data from the database to pre-fill the form
                                        String fname = rs.getString("first_name");
                                        String lname = rs.getString("last_name");
                                        String mobile = rs.getString("mobile");
                                        String email = rs.getString("email");
                                        String checkin = new SimpleDateFormat("yyyy-MM-dd").format(rs.getDate("check_in"));
                                        String checkout = new SimpleDateFormat("yyyy-MM-dd").format(rs.getDate("check_out"));
                                        String adult = rs.getString("adult_count");
                                        String kid = rs.getString("kid_count");
                                        String roomType = rs.getString("room_type");
                                        String numRooms = rs.getString("num_rooms");

                                        // Form to edit the booking
                                        out.println("<form action='updateBooking.jsp' method='get'>");
                                        out.println("<input type='hidden' name='id' value='" + id + "' />");
                                        out.println("<div class='form-group'><label for='first_name'>First Name:</label><input type='text' name='first_name' class='form-control' value='" + fname + "' required /></div>");
                                        out.println("<div class='form-group'><label for='last_name'>Last Name:</label><input type='text' name='last_name' class='form-control' value='" + lname + "' required /></div>");
                                        out.println("<div class='form-group'><label for='mobile'>Mobile:</label><input type='text' name='mobile' class='form-control' value='" + mobile + "' required /></div>");
                                        out.println("<div class='form-group'><label for='email'>Email:</label><input type='email' name='email' class='form-control' value='" + email + "' required /></div>");
                                        out.println("<div class='form-group'><label for='check_in'>Check-In:</label><input type='date' name='check_in' class='form-control' value='" + checkin + "' required /></div>");
                                        out.println("<div class='form-group'><label for='check_out'>Check-Out:</label><input type='date' name='check_out' class='form-control' value='" + checkout + "' required /></div>");
                                        out.println("<div class='form-group'><label for='adult_count'>Adults:</label><input type='number' name='adult_count' class='form-control' value='" + adult + "' required /></div>");
                                        out.println("<div class='form-group'><label for='kid_count'>Kids:</label><input type='number' name='kid_count' class='form-control' value='" + kid + "' required /></div>");
                                        out.println("<div class='form-group'><label for='room_type'>Room Type:</label>");
                                        out.println("<select class='custom-select' name='room_type' required='required'>");
                                        out.println("<option value=''>Select Room Type</option>");
                                        out.println("<option value='Standard Single' " + ("Standard Single".equals(roomType) ? "selected" : "") + ">Standard Single</option>");
                                        out.println("<option value='Standard Double' " + ("Standard Double".equals(roomType) ? "selected" : "") + ">Standard Double</option>");
                                        out.println("<option value='Standard Family Bedroom' " + ("Standard Family Bedroom".equals(roomType) ? "selected" : "") + ">Standard Family Bedroom</option>");
                                        out.println("<option value='Premium Double' " + ("Premium Double".equals(roomType) ? "selected" : "") + ">Premium Double</option>");
                                        out.println("<option value='Premium Family Bedroom' " + ("Premium Family Bedroom".equals(roomType) ? "selected" : "") + ">Premium Family Bedroom</option>");
                                        out.println("</select></div>");
                                        out.println("<div class='form-group'><label for='num_rooms'>Number of Rooms:</label><input type='number' name='num_rooms' class='form-control' value='" + numRooms + "' required /></div>");
                                        out.println("<button type='submit' class='btn btn-primary'>Update Booking</button>");
                                        out.println("</form>");

                                    } else {
                                        out.println("<div class='alert alert-danger text-center'>Booking not found.</div>");
                                    }
                                } catch (Exception e) {
                                    e.printStackTrace();
                                    out.println("<div class='alert alert-danger text-center'>Error: " + e.getMessage() + "</div>");
                                } finally {
                                    try {
                                        if (rs != null) rs.close();
                                        if (stmt != null) stmt.close();
                                        if (conn != null) conn.close();
                                    } catch (SQLException se) {
                                        se.printStackTrace();
                                    }
                                }
                            } else {
                                out.println("<div class='alert alert-warning text-center'>Booking ID is missing or invalid.</div>");
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
    <script src="vendor/slick/slick.min.js"></script>
    <script src="vendor/tempusdominus/js/moment.min.js"></script>
    <script src="vendor/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

</body>
</html>
