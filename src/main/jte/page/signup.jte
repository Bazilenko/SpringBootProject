<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Реєстрація - Автосалон</title>
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
            background: linear-gradient(135deg, var(--success-color), var(--secondary-color));
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
            border-color: var(--success-color);
            box-shadow: 0 0 0 3px rgba(39, 174, 96, 0.1);
        }

        .form-input:invalid {
            border-color: var(--accent-color);
        }

        .btn {
            display: block;
            width: 100%;
            background-color: var(--success-color);
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
            background-color: #219a52;
            transform: translateY(-2px);
        }

        .btn:active {
            transform: translateY(0);
        }

        .password-requirements {
            font-size: 0.85rem;
            color: #6c757d;
            margin-top: 5px;
            line-height: 1.4;
        }

        .checkbox-group {
            display: flex;
            align-items: flex-start;
            margin-bottom: 20px;
        }

        .checkbox-group input[type="checkbox"] {
            margin-right: 10px;
            margin-top: 3px;
            transform: scale(1.2);
        }

        .checkbox-group label {
            font-size: 0.9rem;
            margin-bottom: 0;
            line-height: 1.4;
        }

        .checkbox-group a {
            color: var(--success-color);
            text-decoration: none;
        }

        .checkbox-group a:hover {
            text-decoration: underline;
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

        .error-message {
            color: var(--accent-color);
            font-size: 0.85rem;
            margin-top: 5px;
            display: none;
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
        <div class="subtitle">Створення нового акаунту</div>
    </div>

    <form class="auth-form" action="/register" method="POST" id="register-form">
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
            <div class="error-message" id="password-error">Паролі не співпадають!</div>
        </div>

        <div class="checkbox-group">
            <input type="checkbox" id="terms" name="terms" required>
            <label for="terms">Я погоджуюся з <a href="/terms">умовами використання</a> та <a href="/privacy">політикою конфіденційності</a></label>
        </div>

        <button type="submit" class="btn">Зареєструватися</button>
    </form>

    <div class="auth-links">
        Вже маєте акаунт? <a href="page/login">Увійти</a>
    </div>

    <a href="/" class="back-link">
        <span class="back-icon">←</span> Повернутися на головну
    </a>
</div>

<script>
    // Валідація форми реєстрації
    document.getElementById('register-form').addEventListener('submit', function(e) {
        const password = document.getElementById('register-password').value;
        const confirmPassword = document.getElementById('confirm-password').value;

        if (password !== confirmPassword) {
            e.preventDefault();
            document.getElementById('password-error').style.display = 'block';
            document.getElementById('confirm-password').style.borderColor = 'var(--accent-color)';
            return false;
        }

        if (password.length < 8) {
            e.preventDefault();
            alert('Пароль повинен містити мінімум 8 символів!');
            document.getElementById('register-password').style.borderColor = 'var(--accent-color)';
            return false;
        }

        // Перевірка на наявність цифр та літер
        const hasNumbers = /\d/.test(password);
        const hasLetters = /[a-zA-Zа-яА-Я]/.test(password);

        if (!hasNumbers || !hasLetters) {
            e.preventDefault();
            alert('Пароль повинен містити як цифри, так і літери!');
            document.getElementById('register-password').style.borderColor = 'var(--accent-color)';
            return false;
        }

        return true;
    });

    // Валідація співпадання паролів в реальному часі
    document.getElementById('confirm-password').addEventListener('input', function() {
        const password = document.getElementById('register-password').value;
        const confirmPassword = this.value;
        const errorElement = document.getElementById('password-error');

        if (confirmPassword && password !== confirmPassword) {
            this.style.borderColor = 'var(--accent-color)';
            errorElement.style.display = 'block';
        } else {
            this.style.borderColor = '#e9ecef';
            errorElement.style.display = 'none';
        }
    });

    // Валідація пароля в реальному часі
    document.getElementById('register-password').addEventListener('input', function() {
        const password = this.value;
        const confirmPassword = document.getElementById('confirm-password').value;

        // Скидання стилів
        this.style.borderColor = '#e9ecef';

        // Перевірка довжини та складності
        if (password.length >= 8) {
            const hasNumbers = /\d/.test(password);
            const hasLetters = /[a-zA-Zа-яА-Я]/.test(password);

            if (hasNumbers && hasLetters) {
                this.style.borderColor = 'var(--success-color)';
            }
        }

        // Перевірка співпадання паролів
        if (confirmPassword && password === confirmPassword) {
            document.getElementById('confirm-password').style.borderColor = 'var(--success-color)';
            document.getElementById('password-error').style.display = 'none';
        } else if (confirmPassword) {
            document.getElementById('confirm-password').style.borderColor = 'var(--accent-color)';
            document.getElementById('password-error').style.display = 'block';
        }
    });
</script>
</body>
</html>