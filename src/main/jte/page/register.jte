<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Авторизація - Автосалон</title>
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

        .auth-tabs {
            display: flex;
            background-color: #f1f2f6;
        }

        .tab-button {
            flex: 1;
            padding: 15px;
            background: none;
            border: none;
            font-size: 1rem;
            font-weight: 600;
            color: var(--dark-text);
            cursor: pointer;
            transition: all 0.3s ease;
            border-bottom: 3px solid transparent;
        }

        .tab-button.active {
            background-color: white;
            color: var(--primary-color);
            border-bottom-color: var(--primary-color);
        }

        .tab-button:hover:not(.active) {
            background-color: #e9ecef;
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

        .btn-secondary {
            background-color: var(--success-color);
        }

        .btn-secondary:hover {
            background-color: #219a52;
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

        .tab-content {
            display: none;
        }

        .tab-content.active {
            display: block;
        }

        .password-requirements {
            font-size: 0.85rem;
            color: #6c757d;
            margin-top: 5px;
            line-height: 1.4;
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
        <div class="subtitle">Ваш надійний партнер у виборі автомобіля</div>
    </div>

    <div class="auth-tabs">
        <button class="tab-button active" onclick="switchTab('login')">Вхід</button>
        <button class="tab-button" onclick="switchTab('register')">Реєстрація</button>
    </div>

    <!-- Форма входу -->
    <div id="login-tab" class="tab-content active">
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
    </div>

    <!-- Форма реєстрації -->
    <div id="register-tab" class="tab-content">
        <form class="auth-form" action="/register" method="POST">
            <div class="form-group">
                <label for="register-name">Повне ім'я</label>
                <input type="text" id="register-name" name="name" class="form-input" required>
            </div>

            <div class="form-group">
                <label for="register-email">Email</label>
                <input type="email" id="register-email" name="email" class="form-input" required>
            </div>

            <div class="form-group">
                <label for="register-phone">Телефон</label>
                <input type="tel" id="register-phone" name="phone" class="form-input" placeholder="+380XXXXXXXXX" required>
            </div>

            <div class="form-group">
                <label for="register-password">Пароль</label>
                <input type="password" id="register-password" name="password" class="form-input" required>
                <div class="password-requirements">
                    Пароль повинен містити мінімум 8 символів, включаючи цифри та літери
                </div>
            </div>

            <div class="form-group">
                <label for="confirm-password">Підтвердіть пароль</label>
                <input type="password" id="confirm-password" name="confirm_password" class="form-input" required>
            </div>

            <div class="checkbox-group">
                <input type="checkbox" id="terms" name="terms" required>
                <label for="terms">Я погоджуюся з <a href="/terms" style="color: var(--primary-color);">умовами використання</a></label>
            </div>

            <button type="submit" class="btn btn-secondary">Зареєструватися</button>
        </form>
    </div>

    <a href="/" class="back-link">
        <span class="back-icon">←</span> Повернутися на головну
    </a>
</div>

<script>
    function switchTab(tabName) {
        // Приховуємо всі вкладки
        const tabs = document.querySelectorAll('.tab-content');
        tabs.forEach(tab => tab.classList.remove('active'));

        // Прибираємо активний клас з усіх кнопок
        const buttons = document.querySelectorAll('.tab-button');
        buttons.forEach(btn => btn.classList.remove('active'));

        // Показуємо обрану вкладку
        document.getElementById(tabName + '-tab').classList.add('active');

        // Додаємо активний клас до обраної кнопки
        event.target.classList.add('active');
    }

    // Валідація форми реєстрації
    document.getElementById('register-tab').addEventListener('submit', function(e) {
        const password = document.getElementById('register-password').value;
        const confirmPassword = document.getElementById('confirm-password').value;

        if (password !== confirmPassword) {
            e.preventDefault();
            alert('Паролі не співпадають!');
            return false;
        }

        if (password.length < 8) {
            e.preventDefault();
            alert('Пароль повинен містити мінімум 8 символів!');
            return false;
        }

        return true;
    });

    // Валідація співпадання паролів в реальному часі
    document.getElementById('confirm-password').addEventListener('input', function() {
        const password = document.getElementById('register-password').value;
        const confirmPassword = this.value;

        if (confirmPassword && password !== confirmPassword) {
            this.style.borderColor = 'var(--accent-color)';
        } else {
            this.style.borderColor = '#e9ecef';
        }
    });
</script>
</body>
</html>