<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error - Something Went Wrong</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8d7da;
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
            padding: 40px;
            text-align: center;
            width: 80%;
            max-width: 600px;
        }

        h1 {
            color: #d9534f;
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        p {
            color: #555;
            font-size: 1.2em;
            line-height: 1.6;
        }

        .button {
            background-color: #d9534f;
            color: white;
            padding: 15px 30px;
            border: none;
            border-radius: 5px;
            font-size: 1.1em;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #c9302c;
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
        <h1>Oops! Something Went Wrong</h1>
        <p>Sorry, an error occurred while processing your request. Please try again later or contact support if the issue persists.</p>

        <p>
            <%= (exception != null) ? exception.getMessage() : "No error is found." %>
        </p>
        
        <button class="button" onclick="window.location.href='index.jsp'">Go to Homepage</button>
    </div>

    <footer>
        <p>
            Beautiful error page.
        </p>
    </footer>

</body>
</html>
