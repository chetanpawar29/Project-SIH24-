<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Automated Bus Scheduler</title>
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
        .container {
            background: rgba(255, 255, 255, 0.9); /* Soft white */
            padding: 30px;
            border-radius: 15px;
            text-align: center;
            width: 50%;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        }
        h2 {
            color: #333;
            font-size: 24px;
        }
        .slogan {
            color: #ff7f50;
            font-style: italic;
            margin: 10px 0 20px;
        }
        .btn {
            display: inline-block;
            margin: 10px;
            padding: 12px 25px;
            font-size: 18px;
            color: white;
            background: #ff7f50;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            transition: transform 0.3s ease, background 0.3s ease;
            text-decoration: none;
        }
        .btn:hover {
            transform: scale(1.1);
            background: #ff5733;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Welcome to Automated Bus Scheduler</h2>
        <p >Efficient. Reliable. On Time Your Bus, Your Schedule!</p>
        <a href="adminLogin" class="btn">Admin</a>
        <a href="driverLogin" class="btn">Driver</a>
        <a href="conductorLogin" class="btn">Conductor</a>
    </div>
</body>
</html>
