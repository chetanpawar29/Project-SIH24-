<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }
        body {
            background: linear-gradient(135deg, #64b5f6, #e3f2fd); /* Light blue gradient */
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .login-container {
            background: rgba(0, 0, 0, 0.8);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
            text-align: center;
            color: #fff;
            width: 350px;
        }
        .login-container h1 {
            margin-bottom: 20px;
        }
        .login-container input[type="text"], 
        .login-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }
        .login-container input[type="submit"] {
            width: 100%;
            padding: 10px;
            background: #ff7043;
            border: none;
            color: white;
            font-size: 18px;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }
        .login-container input[type="submit"]:hover {
            background: #ff5722;
        }
        .back-link {
            display: inline-block;
            margin-top: 15px;
            color: #ff7043;
            text-decoration: none;
            font-size: 16px;
        }
        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>Admin Login</h1>
        <form action="loginAdmin" method="post">
            <input type="text" name="aemail" placeholder="Enter Email" required><br>
            <input type="password" name="apassword" placeholder="Enter Password" required><br>
            <input type="submit" value="Login">
        </form>
        <a href="home" class="back-link">Back to Home</a>
    </div>
</body>
</html>
