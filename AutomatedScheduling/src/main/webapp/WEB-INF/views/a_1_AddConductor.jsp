<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conductor Form</title>
    <style>
        
		/* Full-screen Background */
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
    overflow: hidden;
    position: relative;
    background: linear-gradient(135deg, #1e3c72, #2a5298);
}

/* Background Animation Overlay */
body::before {
    content: "";
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.5);
    z-index: -1;
}

/* Video Styling */
video {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    z-index: -2;
    opacity: 0.8; /* Slight transparency for blend */
}

/* Glassmorphism Form */
.container {
    background: rgba(255, 255, 255, 0.15);
    backdrop-filter: blur(10px);
    padding: 25px;
    border-radius: 12px;
    color: white;
    width: 350px;
    box-shadow: 0px 0px 20px rgba(255, 255, 255, 0.2);
    text-align: center;
    transition: 0.3s ease-in-out;
}

/* Form Header */
h1, h2 {
    color: #ffcc00;
    text-shadow: 2px 2px 5px rgba(255, 255, 255, 0.3);
}

/* Input & Labels */
label {
    font-size: 14px;
    font-weight: bold;
    display: block;
    margin-top: 10px;
    text-align: left;
}

input, select {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    border: none;
    border-radius: 5px;
    outline: none;
    background: rgba(255, 255, 255, 0.2);
    color: white;
    font-size: 14px;
}

/* Input Placeholder Styling */
input::placeholder {
    color: rgba(255, 255, 255, 0.6);
}

/* Button Styling */
button {
    margin-top: 15px;
    padding: 12px;
    background: #ffcc00;
    border: none;
    width: 100%;
    font-size: 16px;
    font-weight: bold;
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
    color: #333;
}

button:hover {
    background: #e6b800;
    transform: scale(1.05);
}

/* Floating Glow Animation for Effect */
@keyframes floatingGlow {
    0% {
        box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.2);
    }
    50% {
        box-shadow: 0px 0px 20px rgba(255, 255, 255, 0.5);
    }
    100% {
        box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.2);
    }
}

.container:hover {
    animation: floatingGlow 2s infinite alternate;
}


    </style>
</head>
<body>

    <!-- Background Video -->
    <video autoplay loop muted>
        <source src="bus vdio.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>

    <!-- Form -->
    <div class="container">
        
        <h2>Add Conductor</h2>
        <form action="addConductor" method="post">
            <label for="id">Id:</label>
            <input type="text" id="id" name="cid" placeholder="Enter Conductor ID" required>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="cemail" placeholder="Enter Conductor Email" required>
            
            <label for="name">Name:</label>
            <input type="text" id="name" name="cname" placeholder="Enter Conductor Name" required>
            
            <label for="mobile">Mobile No.:</label>
            <input type="text" id="mobile" name="cmobile" placeholder="Enter Conductor Mobile No." required>
            
            <label for="address">Address:</label>
            <input type="text" id="address" name="caddress" placeholder="Enter Conductor Address" required>
            
            <label for="gender">Gender:</label>
            <select id="gender" name="cgender" required>
                <option value="">Select</option>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
            </select>
            
            <label for="status">Status:</label>
            <input type="text" id="status" name="cstatus" value="Available" readonly>
            
            <label for="duty">Duty Type:</label>
            <select id="duty" name="cdutyType" required>
                <option value="">Select</option>
                <option value="Linked">Linked</option>
                <option value="part-time">Unlinked</option>
            </select>
            
            <button type="submit">Add</button>
        </form>
        
    </div>

</body>
</html>

