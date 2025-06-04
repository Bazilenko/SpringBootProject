<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .container {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 100%;
            max-width: 400px;
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        h1 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 30px;
            font-size: 2rem;
            font-weight: 600;
            text-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        label {
            color: #34495e;
            font-weight: 500;
            margin-bottom: 8px;
            font-size: 0.95rem;
        }

        input[type="text"],
        input[type="password"] {
            padding: 12px 16px;
            border: 2px solid #e1e8ed;
            border-radius: 10px;
            font-size: 16px;
            transition: all 0.3s ease;
            background: rgba(255, 255, 255, 0.9);
            color: #2c3e50;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            outline: none;
            border-color: #3498db;
            box-shadow: 0 0 0 3px rgba(52, 152, 219, 0.1);
            transform: translateY(-2px);
        }

        button {
            background: linear-gradient(135deg, #3498db 0%, #2980b9 100%);
            color: white;
            border: none;
            padding: 14px 24px;
            border-radius: 10px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-top: 10px;
            box-shadow: 0 4px 15px rgba(52, 152, 219, 0.3);
        }

        button:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(52, 152, 219, 0.4);
            background: linear-gradient(135deg, #2980b9 0%, #1f5e8a 100%);
        }

        button:active {
            transform: translateY(0);
        }

        .links {
            text-align: center;
            margin-top: 20px;
            padding-top: 20px;
            border-top: 1px solid rgba(52, 152, 219, 0.2);
        }

        .links a {
            color: #3498db;
            text-decoration: none;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .links a:hover {
            color: #2980b9;
            text-shadow: 0 1px 3px rgba(52, 152, 219, 0.3);
        }

        .forgot-password {
            text-align: right;
            margin-top: 10px;
        }

        .forgot-password a {
            color: #74b9ff;
            text-decoration: none;
            font-size: 0.9rem;
            transition: all 0.3s ease;
        }

        .forgot-password a:hover {
            color: #0984e3;
            text-decoration: underline;
        }

        /* Responsive design */
        @media (max-width: 480px) {
            .container {
                padding: 30px 20px;
                margin: 10px;
            }

            h1 {
                font-size: 1.8rem;
            }
        }

        /* Animation for form appearance */
        .container {
            animation: slideIn 0.6s ease-out;
        }

        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Subtle hover effect for form groups */
        .form-group:hover input {
            border-color: #74b9ff;
        }

        /* Welcome message styling */
        .welcome-message {
            text-align: center;
            color: #5a6c7d;
            margin-bottom: 25px;
            font-size: 0.95rem;
            line-height: 1.4;
        }

        /* Icon styling for inputs */
        .input-with-icon {
            position: relative;
        }

        .input-with-icon input {
            padding-left: 45px;
        }

        .input-icon {
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            color: #7f8c8d;
            font-size: 18px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Login</h1>
    <div class="welcome-message">
        Welcome back! Please sign in to your account.
    </div>

    <form method="post">
        <div class="form-group">
            <label for="username">Username:</label>
            <div class="input-with-icon">
                <span class="input-icon">👤</span>
                <input type="text" id="username" name="username" required/>
            </div>
        </div>

        <div class="form-group">
            <label for="password">Password:</label>
            <div class="input-with-icon">
                <span class="input-icon">🔒</span>
                <input type="password" id="password" name="password" required/>
            </div>
        </div>

        <div class="forgot-password">
            <a href="/forgot-password">Forgot Password?</a>
        </div>

        <div>
            <button type="submit">Sign In</button>
        </div>
    </form>

    <div class="links">
        Don't have an account? <a href="/signup">Sign up here</a>
    </div>
</div>
</body>
</html>