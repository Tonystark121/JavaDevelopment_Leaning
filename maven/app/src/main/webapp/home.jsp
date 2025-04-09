<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beautiful JSP Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            text-align: center;
            width: 80%;
            max-width: 600px;
        }

        h1 {
            color: #4CAF50;
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        p {
            color: #555;
            font-size: 1.2em;
            line-height: 1.6;
        }

        .button {
            background-color: #4CAF50;
            color: white;
            padding: 15px 30px;
            border: none;
            border-radius: 5px;
            font-size: 1.1em;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #45a049;
        }

        footer {
            margin-top: 20px;
            font-size: 0.9em;
            color: #888;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Welcome to My Beautiful JSP Page</h1>
        <p>This page demonstrates how to integrate HTML, CSS, and JSP to create a beautiful user interface.</p>
        
        <%-- JSP Code to show current date --%>
        <p>Today's date is: <%= new java.util.Date() %></p>

        <button class="button" onclick="alert('You clicked the button!')">Click Me</button>
    </div>

    <footer>
        <p>Created with ♥ by Rajeev Gupta</p>
    </footer>

</body>
