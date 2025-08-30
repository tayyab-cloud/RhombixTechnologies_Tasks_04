#!/bin/bash
# Update OS
sudo dnf update -y
# Install Apache web server
sudo dnf install -y httpd
# Start Apache
sudo systemctl start httpd
# Enable Apache to start on boot
sudo systemctl enable httpd
# Create the new, more attractive HTML file
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Awesome Scalable Web App</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f2f5;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            padding: 40px;
            max-width: 600px;
            text-align: center;
            animation: fadeIn 1s ease-out;
        }
        h1 {
            color: #4CAF50;
            margin-bottom: 15px;
            font-size: 2.5em;
        }
        p {
            font-size: 1.1em;
            line-height: 1.6;
            margin-bottom: 10px;
        }
        .instance-info {
            background-color: #e8f5e9;
            border-left: 5px solid #4CAF50;
            padding: 15px;
            margin-top: 25px;
            border-radius: 5px;
            font-size: 0.9em;
            color: #2e7d32;
        }
        .time-display {
            font-weight: bold;
            color: #007bff;
        }
        .footer {
            margin-top: 30px;
            font-size: 0.8em;
            color: #888;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to My Scalable Web App!</h1>
        <p>This is a demonstration of a highly available and scalable web application deployed on AWS, using Auto Scaling Groups and a Load Balancer.</p>
        <div class="instance-info">
            <p><strong>Served from:</strong> <span id="hostname">$(hostname -f)</span></p>
            <p><strong>Current Time (UTC):</strong> <span id="time" class="time-display"></span></p>
        </div>
        <div class="footer">
            <p>&copy; 2024 My Company. All rights reserved.</p>
        </div>
    </div>

    <script>
        function updateTime() {
            document.getElementById('time').innerText = new Date().toUTCString();
        }
        document.addEventListener('DOMContentLoaded', () => {
            updateTime();
            setInterval(updateTime, 1000);
        });
    </script>
</body>
</html>
EOF
# Make sure the ownership is correct for Apache to serve the files
sudo chown -R apache:apache /var/www/html
