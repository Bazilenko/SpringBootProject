@param gg.jte.Content content
@param String title = "Автосалон"


<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${title} - Автосалон Преміум</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
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

        body {
            font-family: 'Segoe UI', 'Roboto', 'Arial', sans-serif;
            line-height: 1.6;
            color: var(--dark-text);
            background-color: var(--light-bg);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        /* Header Styles */
        header {
            background-color: var(--secondary-color);
            color: var(--light-text);
            position: sticky;
            top: 0;
            z-index: 100;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
            height: var(--header-height);
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 1.5rem;
            font-weight: 700;
            color: var(--light-text);
            text-decoration: none;
        }

        .logo-icon {
            color: var(--accent-color);
            font-size: 1.8rem;
        }

        nav {
            display: flex;
            gap: 5px;
        }

        nav a {
            color: var(--light-text);
            text-decoration: none;
            padding: 10px 15px;
            border-radius: 4px;
            font-weight: 500;
            transition: all 0.3s ease;
            position: relative;
        }

        nav a:hover {
            background-color: rgba(255, 255, 255, 0.1);
        }

        nav a.active {
            background-color: var(--primary-color);
        }

        nav a::after {
            content: '';
            position: absolute;
            bottom: 5px;
            left: 50%;
            width: 0;
            height: 2px;
            background-color: var(--accent-color);
            transition: all 0.3s ease;
            transform: translateX(-50%);
        }

        nav a:hover::after {
            width: 50%;
        }

        /* Main Content */
        main {
            flex: 1;
            max-width: 1200px;
            width: 100%;
            margin: 0 auto;
            padding: 30px 20px;
        }

        /* Footer Styles */
        footer {
            background-color: var(--secondary-color);
            color: var(--light-text);
            padding: 0;
            margin-top: auto;
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

        /* Responsive styles */
        @media (max-width: 768px) {
            .header-container {
                flex-direction: column;
                height: auto;
                padding: 15px 20px;
            }

            .logo {
                margin-bottom: 15px;
            }

            nav {
                flex-wrap: wrap;
                justify-content: center;
            }

            .footer-container {
                flex-direction: column;
                text-align: center;
            }

            .footer-info {
                flex-direction: column;
                gap: 20px;
            }

            .social-links {
                justify-content: center;
                margin-top: 20px;
            }
        }

        /* Custom button style */
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: var(--primary-color);
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #2980b9;
        }

        /* Section styling */
        .section-title {
            font-size: 2rem;
            color: var(--secondary-color);
            margin-bottom: 20px;
            position: relative;
            padding-bottom: 10px;
        }

        .section-title::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 50px;
            height: 3px;
            background-color: var(--accent-color);
        }
    </style>
</head>
<body>
<header>
    <div class="header-container">
        <a href="/" class="logo">
            <i class="fas fa-car logo-icon"></i>
            <span>Автосалон Преміум</span>
        </a>
        <nav>
            <a href="/" id="nav-home"><i class="fas fa-home"></i> Головна</a>
            <a href="/cars" id="nav-cars"><i class="fas fa-car"></i> Автомобілі</a>
            <a href="/reviews" id="nav-reviews"><i class="fas fa-comments"></i> Відгуки</a>
            <a href="/contacts" id="nav-contacts"><i class="fas fa-phone"></i> Контакти</a>
        </nav>
    </div>
</header>

<main>
    ${content}
</main>

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

<script>
    // Highlight active navigation item
    document.addEventListener('DOMContentLoaded', function() {
        const currentPath = window.location.pathname;

        if (currentPath === '/') {
            document.getElementById('nav-home').classList.add('active');
        } else if (currentPath.includes('/cars')) {
            document.getElementById('nav-cars').classList.add('active');
        } else if (currentPath.includes('/reviews')) {
            document.getElementById('nav-reviews').classList.add('active');
        } else if (currentPath.includes('/contacts')) {
            document.getElementById('nav-contacts').classList.add('active');
        }
    });
</script>
</body>
</html>