@import vasyl.example.demo.Models.Car
@param Car car

<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Характеристики ${car.getBrand().getName()} ${car.getModel()}</title>
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
            color: #333;
        }

        .container {
            max-width: 1000px;
            margin: 0 auto;
            padding: 20px;
        }

        .back-btn {
            background: rgba(255,255,255,0.2);
            color: white;
            border: none;
            padding: 12px 24px;
            border-radius: 25px;
            cursor: pointer;
            backdrop-filter: blur(10px);
            transition: all 0.3s ease;
            margin-bottom: 20px;
            text-decoration: none;
            display: inline-block;
        }

        .back-btn:hover {
            background: rgba(255,255,255,0.3);
            transform: translateY(-2px);
        }

        .specs-container {
            background: white;
            border-radius: 15px;
            padding: 40px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
        }

        .car-header {
            text-align: center;
            margin-bottom: 40px;
            padding-bottom: 20px;
            border-bottom: 2px solid #ecf0f1;
        }

        .car-title {
            font-size: 2.8rem;
            color: #2c3e50;
            margin-bottom: 10px;
            font-weight: 300;
        }

        .car-price {
            font-size: 2rem;
            color: #27ae60;
            font-weight: bold;
        }

        .car-class {
            display: inline-block;
            padding: 8px 16px;
            border-radius: 25px;
            font-size: 1rem;
            font-weight: bold;
            text-transform: uppercase;
            margin-top: 10px;
        }

        .car-class.low {
            background: #e74c3c;
            color: white;
        }

        .car-class.middle {
            background: #f39c12;
            color: white;
        }

        .car-class.high {
            background: #8e44ad;
            color: white;
        }

        .car-image-large {
            text-align: center;
            margin-bottom: 30px;
        }

        .car-image-large img {
            max-width: 100%;
            height: 300px;
            object-fit: cover;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
        }

        .specs-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 25px;
            margin-bottom: 40px;
        }

        .spec-item {
            background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
            padding: 20px;
            border-radius: 12px;
            border-left: 5px solid #3498db;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .spec-item:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 25px rgba(0,0,0,0.1);
        }

        .spec-label {
            font-weight: bold;
            color: #2c3e50;
            margin-bottom: 8px;
            font-size: 1.1rem;
        }

        .spec-value {
            color: #7f8c8d;
            font-size: 1.2rem;
            font-weight: 500;
        }

        .action-buttons {
            display: flex;
            gap: 15px;
            justify-content: center;
            flex-wrap: wrap;
        }

        .btn {
            padding: 15px 30px;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            font-weight: bold;
            transition: all 0.3s ease;
            text-decoration: none;
            text-align: center;
            font-size: 1rem;
            min-width: 160px;
        }

        .btn-primary {
            background: linear-gradient(135deg, #3498db 0%, #2980b9 100%);
            color: white;
        }

        .btn-secondary {
            background: linear-gradient(135deg, #95a5a6 0%, #7f8c8d 100%);
            color: white;
        }

        .btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }

        @media (max-width: 768px) {
            .container {
                padding: 15px;
            }

            .specs-container {
                padding: 25px;
            }

            .car-title {
                font-size: 2.2rem;
            }

            .specs-grid {
                grid-template-columns: 1fr;
            }

            .action-buttons {
                flex-direction: column;
                align-items: center;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <a href="/cars" class="back-btn">← Назад до каталогу</a>

    <div class="specs-container">
        <div class="car-header">
            <h1 class="car-title">${car.getBrand().getName()} ${car.getModel()}</h1>
            <div class="car-price">${car.getPrice()} USD</div>

            @if(car.getPrice() <= 5000)
                <div class="car-class low">Low class</div>
            @elseif(car.getPrice() <= 10000)
                <div class="car-class middle">Middle class</div>
            @else
                <div class="car-class high">High class</div>
            @endif
        </div>

        <div class="car-image-large">
            <img src='/${car.getImage()}' alt="${car.getBrand().getName()} ${car.getModel()}"/>
        </div>

        <div class="specs-grid">
                <div class="spec-item">
                    <div class="spec-label">VIN code</div>
                    <div class="spec-value">${car.getVin()}</div>
                </div>
            <div class="spec-item">
                <div class="spec-label">Колір</div>
                <div class="spec-value">${car.getColor()}</div>
            </div>

            <div class="spec-item">
                <div class="spec-label">Об'єм двигуна</div>
                <div class="spec-value">${car.getEngine().getPower()}</div>
            </div>
            <div class="spec-item">
                <div class="spec-label">Тип палива</div>
                <div class="spec-value">${car.getEngine().getFuelType()}</div>
            </div>

            <div class="spec-item">
                <div class="spec-label">Розхід палива</div>
                <div class="spec-value">${car.getConsumption()}</div>
            </div>
            <div class="spec-item">
                <div class="spec-label">Коробка передач</div>
                <div class="spec-value">${car.getGearBox()}</div>
            </div>

            <div class="spec-item">
                <div class="spec-label">Рік випуску</div>
                <div class="spec-value">${car.getYear()}</div>
            </div>

        </div>


        <div class="action-buttons">
            <a href="/cars/${car.getId()}/reviews" class="btn btn-primary">📝 Переглянути відгуки</a>
            <a href="/cars" class="btn btn-secondary">🏠 Повернутись до каталогу</a>
        </div>
    </div>
</div>
</body>
</html>