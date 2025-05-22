@import vasyl.example.demo.Models.Car
@import java.util.List

@param List<Car> cars

    <!DOCTYPE html>
    <html lang="uk">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Автомобілі - Автосалон</title>
        <style>
            :root {
                --primary-color: #3498db;
                --secondary-color: #2c3e50;
                --accent-color: #e74c3c;
                --light-bg: #f8f9fa;
                --dark-text: #333;
                --light-text: #fff;
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
                padding: 20px;
            }

            .container {
                max-width: 1200px;
                margin: 0 auto;
                padding: 20px;
            }

            header {
                background-color: var(--secondary-color);
                color: var(--light-text);
                padding: 20px;
                border-radius: 10px 10px 0 0;
                margin-bottom: 30px;
            }

            h1 {
                font-size: 2.5rem;
                font-weight: 700;
                text-align: center;
                margin-bottom: 10px;
            }

            .subtitle {
                text-align: center;
                font-size: 1.2rem;
                color: rgba(255, 255, 255, 0.8);
                margin-bottom: 10px;
            }

            .car-grid {
                display: grid;
                grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
                gap: 20px;
                margin-bottom: 30px;
            }

            .car-card {
                background-color: white;
                border-radius: 8px;
                overflow: hidden;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                transition: transform 0.3s ease, box-shadow 0.3s ease;
            }

            .car-card:hover {
                transform: translateY(-5px);
                box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
            }

            .car-image {
                height: 180px;
                background-color: #e0e0e0;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .car-image svg {
                width: 100px;
                height: 100px;
                color: #9e9e9e;
            }

            .car-details {
                padding: 20px;
            }

            .car-brand {
                font-size: 1.4rem;
                font-weight: 700;
                color: var(--secondary-color);
                margin-bottom: 5px;
            }

            .car-model {
                font-size: 1.1rem;
                color: var(--dark-text);
                margin-bottom: 10px;
            }

            .car-price {
                font-size: 1.3rem;
                font-weight: 600;
                color: var(--accent-color);
            }

            .btn {
                display: inline-block;
                background-color: var(--primary-color);
                color: white;
                text-decoration: none;
                padding: 10px 15px;
                border-radius: 5px;
                font-weight: 600;
                transition: background-color 0.3s ease;
                text-align: center;
                margin-top: 15px;
            }

            .btn:hover {
                background-color: #2980b9;
            }

            .back-link {
                display: inline-flex;
                align-items: center;
                color: var(--primary-color);
                text-decoration: none;
                font-weight: 600;
                margin-top: 20px;
                transition: color 0.3s ease;
            }

            .back-link:hover {
                color: #2980b9;
            }

            .back-icon {
                margin-right: 5px;
            }

            footer {
                margin-top: 40px;
                text-align: center;
                color: #6c757d;
                font-size: 0.9rem;
            }
        </style>
    </head>
    <body>
    <div class="container">
        <header>
            <h1>Каталог автомобілів</h1>
            <p class="subtitle">Знайдіть автомобіль своєї мрії</p>
        </header>

        <div class="car-grid">
            @for (Car car : cars)
                <div class="car-card">
                    <div class="car-image">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M19 17h2c.6 0 1-.4 1-1v-3c0-.9-.7-1.7-1.5-1.9L17 10h-1.1L14 5c-.2-.7-.9-1.1-1.5-1H5c-.5 0-.9.4-.9.9l-.8 8c-.1.5.3 1 .8 1.1H4"></path>
                            <circle cx="7" cy="17" r="2"></circle>
                            <path d="M15 17a2 2 0 1 0 4 0 2 2 0 1 0-4 0z"></path>
                        </svg>
                    </div>
                    <div class="car-details">
                        <div class="car-brand">${car.getBrand()}</div>
                        <div class="car-model">${car.getModel()}</div>
                        <div class="car-price">${car.getPrice()} USD</div>

                        <%-- Defining class of car --%>
                        @if(car.getPrice() <= 5000)
                        <div class="class">Low class</div>
                        @elseif(car.getPrice() <= 10000)
                            <div class="class">Middle class</div>
                        @else
                            <div class="class">High class</div>
                        @endif
                        
                    </div>
                </div>
            @endfor
        </div>

        <a href="/" class="back-link">
            <span class="back-icon">←</span> Повернутися на головну
        </a>

        <footer>
            <p>&copy; 2025 Автосалон. Всі права захищені.</p>
        </footer>
    </div>
    </body>
    </html>