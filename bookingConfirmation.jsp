<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>LOFT CITY | Booking Confirmation</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        
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
                    <li><a href="login.html">Login</a></li>
                    <li><a href="contact.html">Contact Us</a></li>
                </ul>
            </nav>
        </header>
        <!-- Header Section End -->

        <!-- Booking Confirmation Section Start -->
        <div id="booking-confirmation" style="background: #f2f2f2;">
            <div class="container">
                <div class="section-header">
                    <h2>Booking Confirmation</h2>
                    <p>Thank you for booking with Loft City! Below are the details of your booking.</p>
                </div>
                
                <!-- Confirmation Details -->
                <div class="row">
                    <div class="col-12">
                        <div class="confirmation-details">
                            <h4>Your Booking Details:</h4>
                            <table class="table table-bordered">
                                <tr>
                                    <th>First Name</th>
                                    <td><%= request.getParameter("fname") %></td>
                                </tr>
                                <tr>
                                    <th>Last Name</th>
                                    <td><%= request.getParameter("lname") %></td>
                                </tr>
                                <tr>
                                    <th>Mobile</th>
                                    <td><%= request.getParameter("mobile") %></td>
                                </tr>
                                <tr>
                                    <th>Email</th>
                                    <td><%= request.getParameter("email") %></td>
                                </tr>
                                <tr>
                                    <th>Check-In Date</th>
                                    <td><%= request.getParameter("checkin") %></td>
                                </tr>
                                <tr>
                                    <th>Check-Out Date</th>
                                    <td><%= request.getParameter("checkout") %></td>
                                </tr>
                                <tr>
                                    <th>Adults</th>
                                    <td><%= request.getParameter("adult") %></td>
                                </tr>
                                <tr>
                                    <th>Kids</th>
                                    <td><%= request.getParameter("kid") %></td>
                                </tr>
                                <tr>
                                    <th>Room Type</th>
                                    <td><%= request.getParameter("roomType") %></td>
                                </tr>
                                <tr>
                                    <th>Number of Rooms</th>
                                    <td><%= request.getParameter("numRooms") %></td>
                                </tr>
                            </table>

                            <div class="button">
                                <a href="index.html" class="btn btn-primary">Back to Home</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Booking Confirmation Section End -->

        <!-- Footer Section Start -->
        <div id="footer">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="social">
                            <a href=""><li class="fa fa-instagram"></li></a>
                            <a href=""><li class="fa fa-twitter"></li></a>
                            <a href=""><li class="fa fa-facebook-f"></li></a>
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
        <script src="js/main.js"></script>
    </body>
</html>
