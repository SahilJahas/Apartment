<%@ page import="java.io.*, java.text.*, java.util.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Confirmation - Loft City</title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h2 class="mt-5">Booking Confirmation</h2>

        <%
            // Get form data from the request
            String checkIn = request.getParameter("checkIn");
            String checkOut = request.getParameter("checkOut");
            String adults = request.getParameter("adults");
            String kids = request.getParameter("kids");

            // Variables to store parsed dates and formatted output
            Date checkInDate = null;
            Date checkOutDate = null;
            String formattedCheckIn = "";
            String formattedCheckOut = "";

            try {
                // Only parse if the data is not null or empty
                if (checkIn != null && !checkIn.isEmpty() && checkOut != null && !checkOut.isEmpty()) {
                    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

                    // Parse the dates
                    checkInDate = formatter.parse(checkIn);
                    checkOutDate = formatter.parse(checkOut);

                    // Format the dates to display in a more readable format
                    SimpleDateFormat outputFormat = new SimpleDateFormat("MMMM dd, yyyy");
                    formattedCheckIn = outputFormat.format(checkInDate);
                    formattedCheckOut = outputFormat.format(checkOutDate);
                }
            } catch (ParseException e) {
                // Handle the case where the dates can't be parsed
                formattedCheckIn = "Invalid Date Format";
                formattedCheckOut = "Invalid Date Format";
            }

            // If the form fields are missing or invalid, set default values
            if (adults == null || adults.isEmpty()) {
                adults = "N/A";
            }
            if (kids == null || kids.isEmpty()) {
                kids = "N/A";
            }
        %>

        <div class="alert alert-success mt-4">
            <h4>Your booking has been successfully submitted!</h4>
            <p><strong>Check-In Date:</strong> <%= formattedCheckIn %></p>
            <p><strong>Check-Out Date:</strong> <%= formattedCheckOut %></p>
            <p><strong>Adults:</strong> <%= adults %></p>
            <p><strong>Kids:</strong> <%= kids %></p>
        </div>

        <div class="mt-3">
            <a href="index.html" class="btn btn-primary">Return to Home</a>
        </div>
    </div>

    <!-- Include Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
