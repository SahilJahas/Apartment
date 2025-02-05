<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel | Loft City</title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/admin-style.css" rel="stylesheet">
</head>
<body>
    <!-- Admin Panel Sidebar -->
    <div id="admin-sidebar">
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link active" href="adminpanel.jsp">Dashboard</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="rooms.jsp">Manage Rooms</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="amenities.jsp">Manage Amenities</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="bookings.jsp">View Bookings</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="logout.jsp">Logout</a>
            </li>
        </ul>
    </div>

    <!-- Main Content Area -->
    <div id="admin-content">
        <!-- Dashboard Section -->
        <div class="container">
            <h1 class="mt-4">Welcome, Admin</h1>

            <!-- Dashboard Overview -->
            <div class="row mt-5">
                <div class="col-md-3">
                    <div class="card text-white bg-primary">
                        <div class="card-body">
                            <h5 class="card-title">Total Rooms</h5>
                            <p class="card-text">15</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card text-white bg-success">
                        <div class="card-body">
                            <h5 class="card-title">Active Bookings</h5>
                            <p class="card-text">30</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card text-white bg-warning">
                        <div class="card-body">
                            <h5 class="card-title">Pending Approvals</h5>
                            <p class="card-text">5</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card text-white bg-danger">
                        <div class="card-body">
                            <h5 class="card-title">Total Users</h5>
                            <p class="card-text">200</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Quick Actions Section -->
            <div class="row mt-5">
                <div class="col-md-6">
                    <h3>Add New Room</h3>
                    <form action="addroom.jsp" method="POST">
                        <div class="form-group">
                            <label for="room-name">Room Name</label>
                            <input type="text" class="form-control" id="room-name" name="room-name" required>
                        </div>
                        <div class="form-group">
                            <label for="room-price">Price per Night</label>
                            <input type="number" class="form-control" id="room-price" name="room-price" required>
                        </div>
                        <div class="form-group">
                            <label for="room-description">Description</label>
                            <textarea class="form-control" id="room-description" name="room-description" rows="4" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Add Room</button>
                    </form>
                </div>

                <div class="col-md-6">
                    <h3>Add New Amenity</h3>
                    <form action="addamenity.jsp" method="POST">
                        <div class="form-group">
                            <label for="amenity-name">Amenity Name</label>
                            <input type="text" class="form-control" id="amenity-name" name="amenity-name" required>
                        </div>
                        <div class="form-group">
                            <label for="amenity-description">Description</label>
                            <textarea class="form-control" id="amenity-description" name="amenity-description" rows="4" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Add Amenity</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- JS Files -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
