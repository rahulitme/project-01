<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Custom styling for the form */
        .form-container {
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 20px;
            background-color: #f9f9f9;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            font-weight: bold;
            color: #333;
        }
        .form-control {
            border: 1px solid #ccc;
            border-radius: 5px;
            color: #333;
            border-color: red;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <h2 class="text-center mb-4">Registration Form</h2>
                <form action="Register" method="post" class="form-container">
                    <div class="form-group">
                        <label for="user_name">Name:</label>
                        <input type="text" class="form-control" id="user_name" name="user_name" required>
                    </div>
                    <div class="form-group">
                        <label for="user_password">Password:</label>
                        <input type="password" class="form-control" id="user_password" name="user_password" required>
                    </div>
                    <div class="form-group">
                        <label for="user_email">Email:</label>
                        <input type="email" class="form-control" id="user_email" name="user_email" required>
                    </div>
                    <div class="form-group">
                        <label for="user_mobile">Mobile:</label>
                        <input type="text" class="form-control" id="user_mobile" name="user_mobile" required>
                    </div>
                    <div class="form-group">
                        <label for="user_state">State:</label>
                        <input type="text" class="form-control" id="user_state" name="user_state">
                    </div>
                    <div class="form-group">
                        <label for="user_register">Register:</label>
                        <input type="text" class="form-control" id="user_register" name="user_register">
                    </div>
                    <div class="form-group">
                        <label for="user_address">Address:</label>
                        <textarea class="form-control" id="user_address" name="user_address" rows="3"></textarea>
                    </div>
                    <!-- Add a loading spinner -->
                    <div class="text-center">
                        <div class="spinner-border text-primary d-none" id="loadingSpinner" role="status">
                            <span class="sr-only">Loading...</span>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block mt-4">Register</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Add Bootstrap and jQuery scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        // Show the loading spinner when the form is submitted
        $('form').submit(function() {
            $('#loadingSpinner').removeClass('d-none');
        });
    </script>
</body>
</html>
