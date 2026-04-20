<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Document</title>
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

</body>
</html>