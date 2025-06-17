@import vasyl.example.demo.Models.Car
@import java.util.List

@param List<Car> cars

<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
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
        html, body {
            height: 100%;
            display: flex;
            flex-direction: column;
        }
        .wrapper {
            flex: 1;
        }

        body {
            font-family: 'Roboto', 'Arial', sans-serif;
            line-height: 1.6;
            color: var(--dark-text);
            background-color: var(--light-bg);
            padding: 0px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .search-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }

        .search-form {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
            align-items: flex-end;
        }

        .form-group {
            flex: 1;
            min-width: 200px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: 600;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 1rem;
        }

        .btn-search {
            background-color: var(--primary-color);
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }

        .btn-search:hover {
            background-color: #2980b9;
        }

        h1 {
            font-size: 2.5rem;
            font-weight: 700;
            text-align: center;
            margin-bottom: 10px;
        }

        .car-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
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
            width: auto;
            height: 200px;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
            background-color: #f0f0f0;
        }

        .car-image img {
            width: 100vh;
            max-height: 100%;
            object-fit: cover;
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

        .class {
            margin: 10px 0;
            font-style: italic;
            color: #666;
        }
    </style>
</head>
<body>
@template.layout.header()
<main>
    <div class="wrapper">
        <div class="container">
            <!-- Пошукова форма -->
            <div class="search-container">
                <form action="/cars/search" method="get" class="search-form">
                    <div class="form-group">
                        <label for="brand">Бренд</label>
                        <input type="text" id="brand" name="brand" class="form-control"
                               placeholder="Введіть назву бренду">
                    </div>
                    <div class="form-group">
                        <label for="minPrice">Мінімальна ціна (USD)</label>
                        <input type="number" id="minPrice" name="minPrice" class="form-control"
                               placeholder="Від">
                    </div>
                    <div class="form-group">
                        <label for="maxPrice">Максимальна ціна (USD)</label>
                        <input type="number" id="maxPrice" name="maxPrice" class="form-control"
                               placeholder="До">
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn-search">Пошук</button>
                    </div>
                </form>
            </div>

            <!-- Список автомобілів -->
            <div class="car-grid">
                @for (Car car : cars)
                    <div class="car-card">
                        <div class="car-image">
                            <img src='/${car.getImage()}' alt="Car image" class="car-photo"/>
                        </div>
                        <div class="car-details">
                            <div class="car-brand">${car.getBrand().getName()}</div>
                            <div class="car-model">${car.getModel()}</div>
                            <div class="car-price">${car.getPrice()} USD</div>

                            @if(car.getPrice() <= 5000)
                                <div class="class">Low class</div>
                            @elseif(car.getPrice() <= 10000)
                                <div class="class">Middle class</div>
                            @else
                                <div class="class">High class</div>
                            @endif
                            <a href="/details/${car.getId()}" class="btn">Характеристики</a>
                        </div>
                    </div>
                @endfor
            </div>

            <a href="/" class="back-link">
                <span class="back-icon">←</span> Повернутися на головну
            </a>
        </div>
    </div>
</main>
@template.layout.footer()
</body>
</html>