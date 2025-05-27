<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Вхід - Автосалон</title>
    <style>
        :root {
            --primary-color: #3498db;
            --secondary-color: #2c3e50;
            --accent-color: #e74c3c;
            --light-bg: #f8f9fa;
            --dark-text: #333;
            --light-text: #fff;
            --success-color: #27ae60;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Roboto', 'Arial', sans-serif;
            line-height: 1.6;
            color: var(--dark-text);
            background-color: var(--light-bg);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        .auth-container {
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            max-width: 400px;
            width: 100%;
        }

        .auth-header {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: var(--light-text);
            padding: 30px 20px;
            text-align: center;
        }

        .auth-header h1 {
            font-size: 2rem;
            font-weight: 700;
            margin-bottom: 5px;
        }

        .auth-header .subtitle {
            font-size: 1rem;
            opacity: 0.9;
        }

        .auth-form {
            padding: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: var(--secondary-color);
        }

        .form-input {
            width: 100%;
            padding: 12px 15px;
            border: 2px solid #e9ecef;
            border-radius: 8px;
            font-size: 1rem;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        .form-input:focus {
            outline: none;
            border-color: var(--primary-color);
            box-shadow: 0 0 0 3px rgba(52, 152, 219, 0.1);
        }

        .form-input:invalid {
            border-color: var(--accent-color);
        }

        .btn {
            display: block;
            width: 100%;
            background-color: var(--primary-color);
            color: white;
            text-decoration: none;
            padding: 15px;
            border: none;
            border-radius: 8px;
            font-weight: 600;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
            margin-bottom: 15px;
        }

        .btn:hover {
            background-color: #2980b9;
            transform: translateY(-2px);
        }

        .btn:active {
            transform: translateY(0);
        }

        .forgot-password {
            text-align: center;
            margin-top: 15px;
        }

        .forgot-password a {
            color: var(--primary-color);
            text-decoration: none;
            font-size: 0.9rem;
            transition: color 0.3s ease;
        }

        .forgot-password a:hover {
            color: #2980b9;
            text-decoration: underline;
        }

        .checkbox-group {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .checkbox-group input[type="checkbox"] {
            margin-right: 10px;
            transform: scale(1.2);
        }

        .checkbox-group label {
            font-size: 0.9rem;
            margin-bottom: 0;
        }

        .auth-links {
            text-align: center;
            padding: 20px;
            border-top: 1px solid #e9ecef;
            background-color: #f8f9fa;
        }

        .auth-links a {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 600;
            transition: color 0.3s ease;
        }

        .auth-links a:hover {
            color: #2980b9;
            text-decoration: underline;
        }

        .back-link {
            display: inline-flex;
            align-items: center;
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 600;
            margin-top: 20px;
            transition: color 0.3s ease;
            justify-content: center;
            width: 100%;
        }

        .back-link:hover {
            color: #2980b9;
        }

        .back-icon {
            margin-right: 5px;
        }

        @media (max-width: 480px) {
            .auth-container {
                margin: 10px;
            }

            .auth-header {
                padding: 20px 15px;
            }

            .auth-form {
                padding: 20px;
            }
        }
    </style>
</head>
<body>
<div class="auth-container">
    <div class="auth-header">
        <h1>Автосалон</h1>
        <div class="subtitle">Вхід до особистого кабінету</div>
    </div>

    <form class="auth-form" action="/login" method="POST">
        <div class="form-group">
            <label for="login-email">Email або телефон</label>
            <input type="text" id="login-email" name="email" class="form-input" required>
        </div>

        <div class="form-group">
            <label for="login-password">Пароль</label>
            <input type="password" id="login-password" name="password" class="form-input" required>
        </div>

        <div class="checkbox-group">
            <input type="checkbox" id="remember-me" name="remember">
            <label for="remember-me">Запам'ятати мене</label>
        </div>

        <button type="submit" class="btn">Увійти</button>

        <div class="forgot-password">
            <a href="/forgot-password">Забули пароль?</a>
        </div>
    </form>

    <div class="auth-links">
        Ще не маєте акаунту? <a href="register.html">Зареєструватися</a>
    </div>

    <a href="/" class="back-link">
        <span class="back-icon">←</span> Повернутися на головну
    </a>
</div>
</body>
</html>