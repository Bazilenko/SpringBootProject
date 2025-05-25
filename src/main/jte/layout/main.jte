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
        html, body {
            height: 100%;
            display: flex;
            flex-direction: column;
        }
        .wrapper {
            flex: 1;
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


        /* Main Content */
        main {
            flex: 1;
            max-width: 1200px;
            width: 100%;
            margin: 0 auto;
            padding: 30px 20px;
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

<main>
    <div class="wrapper">${content}</div>
</main>


</body>
</html>