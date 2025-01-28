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
    <body>
        <!-- Header Section Start -->
        <header id="header">
            <a href="index.html" class="logo"><img src="img/logo.png" alt="logo"></a>
            <div class="phone"><i class="fa fa-phone"></i>+1 234 567 8900</div>
            <div class="mobile-menu-btn"><i class="fa fa-bars"></i></div>
            <nav class="main-menu top-menu">
                <ul>
                    <li class="active"><a href="index.html">Home</a></li>
                    <li><a href="about.html">About Us</a></li>
                    <li><a href="room.html">Apartments</a></li>
                    <li><a href="amenities.html">Amenities</a></li>
                    <li><a href="booking.jsp">Booking</a></li>
                    <li><a href="login.html">Login</a></li>
                    <li><a href="contact.html">Contact Us</a></li>
                </ul>
            </nav>
        </header>
        <!-- Header Section End -->

        <!-- Booking Form Section Start -->
        <div id="booking">
            <div class="container">
                <div class="section-header">
                    <h2>Book Your Room</h2>
                    <p>Fill in the details below to book your apartment room. We look forward to hosting you at Loft City!</p>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="booking-form">
                            <form name="bookingForm" id="bookingForm" action="viewbooking.jsp" method="POST" novalidate="novalidate">
                                <div class="form-row">
                                    <div class="control-group col-sm-6">
                                        <label>First Name</label>
                                        <input type="text" class="form-control" id="fname" name="fname" placeholder="E.g. John" required="required" />
                                    </div>
                                    <div class="control-group col-sm-6">
                                        <label>Last Name</label>
                                        <input type="text" class="form-control" id="lname" name="lname" placeholder="E.g. Sina" required="required" />
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="control-group col-sm-6">
                                        <label>Mobile</label>
                                        <input type="text" class="form-control" id="mobile" name="mobile" placeholder="E.g. +1 234 567 8900" required="required" />
                                    </div>
                                    <div class="control-group col-sm-6">
                                        <label>Email</label>
                                        <input type="email" class="form-control" id="email" name="email" placeholder="E.g. email@example.com" required="required" />
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="control-group col-sm-6">
                                        <label>Check-In</label>
                                        <input type="text" class="form-control datetimepicker-input" id="checkin" name="checkin" data-toggle="datetimepicker" data-target="#checkin" placeholder="E.g. MM/DD/YYYY" required="required" />
                                    </div>
                                    <div class="control-group col-sm-6">
                                        <label>Check-Out</label>
                                        <input type="text" class="form-control datetimepicker-input" id="checkout" name="checkout" data-toggle="datetimepicker" data-target="#checkout" placeholder="E.g. MM/DD/YYYY" required="required" />
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="control-group col-sm-6">
                                        <label>Adult</label>
                                        <select class="custom-select" id="adult" name="adult" required="required">
                                            <option value="0">0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="8">8</option>
                                            <option value="9">9</option>
                                            <option value="10">10</option>
                                        </select>
                                    </div>
                                    <div class="control-group col-sm-6">
                                        <label>Kid</label>
                                        <select class="custom-select" id="kid" name="kid" required="required">
                                            <option value="0">0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="8">8</option>
                                            <option value="9">9</option>
                                            <option value="10">10</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label>Room Type</label>
                                    <select class="custom-select" id="roomType" name="roomType" required="required">
                                     
                                        <option value="Standard Family Bedroom">Standard Family Bedroom</option>

                                    </select>
                                </div>
                                <div class="control-group">
                                    <label>Number of Rooms</label>
                                    <select class="custom-select" id="numRooms" name="numRooms" required="required">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select>
                                </div>
                                <div class="button">
                                    <button type="submit" id="bookingButton">Book Now</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Booking Form Section End -->
<%-- Database connection and insertion logic --%>
<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String fname = request.getParameter("first_name");
        String lname = request.getParameter("last_name");
        String mobile = request.getParameter("mobile");
        String email = request.getParameter("email");
        String checkin = request.getParameter("check_in");
        String checkout = request.getParameter("checkout");
        String adult = request.getParameter("adult_count");
        String kid = request.getParameter("kid_count");
        String roomType = request.getParameter("room_type");
        String numRooms = request.getParameter("num_rooms");

        Connection conn = null;
        PreparedStatement stmt = null;
        String url = "jdbc:mysql://localhost:3306/apartment?useUnicode=true&characterEncoding=UTF-8";
        String dbUser = "root";
        String dbPassword = "";

        try {
            // Ensure the driver is loaded
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, dbUser, dbPassword);

            // Convert checkin and checkout dates into java.sql.Date
            java.sql.Date checkinDate = java.sql.Date.valueOf(checkin);
            java.sql.Date checkoutDate = java.sql.Date.valueOf(checkout);

            String sql = "INSERT INTO bookings (first_name, last_name, mobile, email, check_in, checkout, adult_count, kid_count, room_type, num_rooms, created_at) "
                       + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, CURRENT_TIMESTAMP)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, fname);
            stmt.setString(2, lname);
            stmt.setString(3, mobile);
            stmt.setString(4, email);
            stmt.setDate(5, checkinDate);
            stmt.setDate(6, checkoutDate);
            stmt.setInt(7, Integer.parseInt(adult));
            stmt.setInt(8, Integer.parseInt(kid));
            stmt.setString(9, roomType);
            stmt.setInt(10, Integer.parseInt(numRooms));

            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) {
                out.println("<div class='alert alert-success text-center'>Booking successful!</div>");
            } else {
                out.println("<div class='alert alert-danger text-center'>Failed to make the booking.</div>");
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
    }
%>



        <!-- Footer Section Start -->
        <div id="footer">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="social">
                            <a href="https://instagram.com/yourprofile" target="_blank"><li class="fa fa-instagram"></li></a>
                            <a href="https://twitter.com/yourprofile" target="_blank"><li class="fa fa-twitter"></li></a>
                            <a href="https://facebook.com/yourprofile" target="_blank"><li class="fa fa-facebook-f"></li></a>
                        </div>
                    </div>
                    <div class="col-12">
                        <ul>
                            <li><a href="">Home</a></li>
                            <li><a href="">About</a></li>
                            <li><a href="">Terms</a></li>
                            <li><a href="">Contact</a></li>
                        </ul>
                    </div>
                    <div class="col-12">
                        <p>Copyright &#169; <a href="https://htmlcodex.com">HTML Codex</a> All Rights Reserved.</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Section End -->

        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

        <!-- Vendor JavaScript File -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/jquery/jquery-migrate.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="vendor/easing/easing.min.js"></script>
        <script src="vendor/superfish/hoverIntent.js"></script>
        <script src="vendor/superfish/superfish.min.js"></script>
        <script src="vendor/wow/wow.min.js"></script>
        <script src="vendor/slick/slick.min.js"></script>
        <script src="vendor/tempusdominus/js/moment.min.js"></script>
        <script src="vendor/tempusdominus/js/moment-timezone.min.js"></script>
        <script src="vendor/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
        
        <!-- Main Javascript File -->
        <script>
            $(document).ready(function() {
                $('#checkin').datetimepicker({
                    format: 'L'
                });
                $('#checkout').datetimepicker({
                    format: 'L',
                    useCurrent: false // Important for "Check-Out" field to be after "Check-In"
                });

                $("#checkin").on("change.datetimepicker", function(e) {
                    $('#checkout').datetimepicker('minDate', e.date);
                });
            });
        </script>
        <script src="js/main.js"></script>
    </body>
</html>
