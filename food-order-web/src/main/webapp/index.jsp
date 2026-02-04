<!DOCTYPE html>
<html>
<head>
    <title>Food Order System - CI/CD Demo</title>
    <style>
        body { font-family: Arial; margin: 40px; background: #f0f8ff; }
        .container { max-width: 800px; margin: 0 auto; background: white; padding: 30px; border-radius: 15px; box-shadow: 0 5px 15px rgba(0,0,0,0.1); }
        h1 { color: #2c3e50; border-bottom: 3px solid #3498db; padding-bottom: 10px; }
        .success { color: #27ae60; background: #d5f4e6; padding: 10px; border-radius: 5px; }
        .menu-item { border: 1px solid #ddd; padding: 15px; margin: 10px 0; border-radius: 8px; }
        button { background: #3498db; color: white; border: none; padding: 10px 20px; border-radius: 5px; cursor: pointer; }
        .ci-cd { background: #f8f9fa; padding: 15px; border-radius: 8px; margin: 20px 0; }
    </style>
</head>
<body>
    <div class="container">
        <h1>🍕 Food Order System</h1>
        <p class="success">✅ Successfully deployed via CI/CD Pipeline!</p>
        
        <div class="ci-cd">
            <h3>🚀 CI/CD Flow: Git → Jenkins → Maven → Tomcat</h3>
            <p>This app was automatically built and deployed.</p>
        </div>
        
        <h2>Order Food Online</h2>
        
        <div class="menu-item">
            <h3>Pizza Margherita - $12.99</h3>
            <p>Fresh mozzarella, tomatoes, basil</p>
            <button onclick="order('Pizza')">Order Now</button>
        </div>
        
        <div class="menu-item">
            <h3>Classic Burger - $9.99</h3>
            <p>Beef patty, cheese, lettuce, tomato</p>
            <button onclick="order('Burger')">Order Now</button>
        </div>
        
        <div class="menu-item">
            <h3>Garlic Pasta - $11.99</h3>
            <p>Spaghetti with garlic butter sauce</p>
            <button onclick="order('Pasta')">Order Now</button>
        </div>
        
        <div id="orderResult" style="margin-top:20px;"></div>
        
        <h3>System Information</h3>
        <p>Deployed: <%= new java.util.Date() %></p>
        <p>Java Version: <%= System.getProperty("java.version") %></p>
        <p>Server: Apache Tomcat 9</p>
        <p>Build Tool: Apache Maven</p>
    </div>
    
    <script>
        function order(item) {
            const orderId = Math.floor(Math.random() * 1000);
            document.getElementById('orderResult').innerHTML = 
                `<div class="success">✅ Order #${orderId}: ${item} ordered successfully!</div>`;
        }
    </script>
</body>
</html>
