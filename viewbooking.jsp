<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Booking Confirmation - LOFT CITY</title>
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

        <!-- Booking Details Section Start -->
        <div id="booking-details">
            <div class="container">
                <div class="section-header">
                    <h2>Your Booking Details</h2>
                    <p>Thank you for booking with Loft City. Below are the details you entered:</p>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="booking-details">
                            <!-- Display booking details -->
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
                                    <th>Check-In</th>
                                    <td><%= request.getParameter("checkin") %></td>
                                </tr>
                                <tr>
                                    <th>Check-Out</th>
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

                            <div class="alert alert-success text-center">
                                Your booking has been successfully recorded! We look forward to hosting you.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Booking Details Section End -->

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
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
