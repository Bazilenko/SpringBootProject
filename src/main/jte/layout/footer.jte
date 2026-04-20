<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Document</title>
    <style>
        html, body {
            height: 100%;
            display: flex;
            flex-direction: column;
        }

        .wrapper {
            flex: 1;
        }

        footer {
            width: 100%;
            background-color: var(--secondary-color);
            color: var(--light-text);
            margin-top: auto; /* на всю ширину */
        }

        :root {
            --primary-color: #3498db;
            --secondary-color: #2c3e50;
            --accent-color: #e74c3c;
            --light-bg: #f8f9fa;
            --dark-text: #333;
            --light-text: #fff;
            --header-height: 70px;
            --footer-height: 80px;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        /* Footer Styles */
        footer {
            background-color: var(--secondary-color);
            color: var(--light-text);
            margin-top: auto; /* This pushes footer to bottom */
        }

        .footer-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
        }
        .footer-info {
            display: flex;
            gap: 30px;
        }

        .footer-section {
            margin-bottom: 15px;
        }

        .footer-section h3 {
            font-size: 1.1rem;
            margin-bottom: 10px;
            color: var(--primary-color);
        }

        .footer-section a {
            color: rgba(255, 255, 255, 0.7);
            text-decoration: none;
            transition: color 0.3s ease;
            display: block;
            margin-bottom: 5px;
        }

        .footer-section a:hover {
            color: var(--light-text);
        }

        .social-links {
            display: flex;
            gap: 15px;
        }

        .social-links a {
            color: var(--light-text);
            font-size: 1.2rem;
            transition: color 0.3s ease;
        }

        .social-links a:hover {
            color: var(--primary-color);
        }

        .copyright {
            width: 100%;
            text-align: center;
            padding-top: 15px;
            margin-top: 15px;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            color: rgba(255, 255, 255, 0.6);
            font-size: 0.9rem;
        }


    </style>
</head>
<body>

<footer>
    <div class="footer-container">
        <div class="footer-info">
            <div class="footer-section">
                <h3>Наші послуги</h3>
                <a href="/new-cars">Нові автомобілі</a>
                <a href="/used-cars">Автомобілі з пробігом</a>
                <a href="/financing">Фінансування</a>
                <a href="/service">Сервісне обслуговування</a>
            </div>
            <div class="footer-section">
                <h3>Контакти</h3>
                <a href="tel:+380123456789"><i class="fas fa-phone"></i> +38 (012) 345-67-89</a>
                <a href="mailto:info@autosalon.ua"><i class="fas fa-envelope"></i> info@autosalon.ua</a>
                <a href="/address"><i class="fas fa-map-marker-alt"></i> м. Київ, вул. Автомобільна, 123</a>
            </div>
        </div>
        <div class="social-links">
            <a href="#" title="Facebook"><i class="fab fa-facebook-f"></i></a>
            <a href="#" title="Instagram"><i class="fab fa-instagram"></i></a>
            <a href="#" title="YouTube"><i class="fab fa-youtube"></i></a>
            <a href="#" title="Telegram"><i class="fab fa-telegram"></i></a>
        </div>
        <div class="copyright">
            <p>&copy; 2025 Автосалон Преміум. Всі права захищені.</p>
        </div>
    </div>
</footer>

</body>
</html>