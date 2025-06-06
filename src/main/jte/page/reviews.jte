    @import vasyl.example.demo.Models.Car
    @import vasyl.example.demo.data.Review
    @import java.util.List
    @param List<Review> reviews

    <!DOCTYPE html>
    <html lang="uk">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Відгуки</title>
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
            .sorting-buttons {
                background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
                padding: 15px;
                border-radius: 12px;
                margin: 20px 0;
                border-left: 5px solid #3498db;
            }

            .sort-title {
                font-weight: bold;
                color: #2c3e50;
                margin-bottom: 10px;
                font-size: 1.1rem;
            }

            .sort-options {
                display: flex;
                flex-wrap: wrap;
                gap: 10px;
            }

            .sort-btn {
                background: linear-gradient(135deg, #3498db 0%, #2980b9 100%);
                color: white;
                padding: 10px 15px;
                border-radius: 20px;
                text-decoration: none;
                font-size: 0.9rem;
                transition: all 0.3s ease;
            }

            .sort-btn:hover {
                transform: translateY(-2px);
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            }

            /* Highlight the current sorting option */
            .sort-btn.active {
                background: linear-gradient(135deg, #27ae60 0%, #229954 100%);
                font-weight: bold;
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

            .reviews-container {
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

            .car-subtitle {
                font-size: 1.4rem;
                color: #7f8c8d;
                margin-bottom: 20px;
            }

            .car-image-small {
                display: flex;
                justify-content: center;
                margin-bottom: 20px;
            }

            .car-image-small img {
                width: 150px;
                height: 100px;
                object-fit: cover;
                border-radius: 12px;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            }

            .reviews-stats {
                display: flex;
                justify-content: center;
                gap: 40px;
                margin-bottom: 30px;
                flex-wrap: wrap;
            }

            .stat-item {
                text-align: center;
                padding: 15px;
                background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
                border-radius: 12px;
                min-width: 120px;
            }

            .stat-number {
                font-size: 2rem;
                font-weight: bold;
                color: #3498db;
            }

            .stat-label {
                font-size: 0.9rem;
                color: #7f8c8d;
                margin-top: 5px;
            }

            .add-review-section {
                background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
                padding: 25px;
                border-radius: 12px;
                margin-bottom: 30px;
                border-left: 5px solid #27ae60;
            }

            .add-review-title {
                font-size: 1.5rem;
                color: #2c3e50;
                margin-bottom: 20px;
                text-align: center;
            }

            .review-form {
                display: flex;
                flex-direction: column;
                gap: 15px;
            }

            .form-group {
                display: flex;
                flex-direction: column;
            }

            .form-label {
                font-weight: bold;
                color: #2c3e50;
                margin-bottom: 8px;
            }

            .form-input, .form-textarea {
                padding: 12px;
                border: 2px solid #ecf0f1;
                border-radius: 8px;
                font-size: 1rem;
                transition: border-color 0.3s ease;
            }

            .form-input:focus, .form-textarea:focus {
                outline: none;
                border-color: #3498db;
            }

            .form-textarea {
                resize: vertical;
                min-height: 100px;
            }

            .rating-input {
                display: flex;
                gap: 10px;
                align-items: center;
            }

            .star {
                font-size: 2rem;
                color: #ddd;
                cursor: pointer;
                transition: color 0.2s ease;
            }

            .star:hover,
            .star.active {
                color: #f39c12;
            }

            .submit-btn {
                background: linear-gradient(135deg, #27ae60 0%, #229954 100%);
                color: white;
                border: none;
                padding: 15px 30px;
                border-radius: 30px;
                cursor: pointer;
                font-weight: bold;
                font-size: 1rem;
                transition: all 0.3s ease;
                align-self: center;
                min-width: 200px;
            }

            .submit-btn:hover {
                transform: translateY(-3px);
                box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            }

            .reviews-list {
                display: flex;
                flex-direction: column;
                gap: 20px;
            }

            .review-item {
                background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
                padding: 25px;
                border-radius: 12px;
                border-left: 5px solid #3498db;
                transition: transform 0.3s ease, box-shadow 0.3s ease;
            }

            .review-item:hover {
                transform: translateY(-2px);
                box-shadow: 0 8px 25px rgba(0,0,0,0.1);
            }

            .review-header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 15px;
                flex-wrap: wrap;
                gap: 10px;
            }

            .review-author {
                font-weight: bold;
                color: #2c3e50;
                font-size: 1.1rem;
            }

            .review-date {
                color: #7f8c8d;
                font-size: 0.9rem;
            }

            .review-rating {
                display: flex;
                gap: 2px;
            }

            .review-star {
                color: #f39c12;
                font-size: 1.2rem;
            }

            .review-star.empty {
                color: #ddd;
            }

            .review-comment {
                color: #555;
                line-height: 1.6;
                font-size: 1rem;
            }

            .no-reviews {
                text-align: center;
                padding: 60px 20px;
                color: #7f8c8d;
            }

            .no-reviews-icon {
                font-size: 4rem;
                margin-bottom: 20px;
            }

            .no-reviews-text {
                font-size: 1.3rem;
                margin-bottom: 10px;
            }

            .no-reviews-subtext {
                font-size: 1rem;
            }

            .action-buttons {
                display: flex;
                gap: 15px;
                justify-content: center;
                flex-wrap: wrap;
                margin-top: 40px;
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

                .reviews-container {
                    padding: 25px;
                }

                .car-title {
                    font-size: 2.2rem;
                }

                .reviews-stats {
                    gap: 20px;
                }

                .review-header {
                    flex-direction: column;
                    align-items: flex-start;
                }

                .action-buttons {
                    flex-direction: column;
                    align-items: center;
                }
            }
        </style>
    </head>
    <body>
    <div class="add-review-section">
        <div class="add-review-title">Залишити відгук</div>
        <form id="review-form" class="review-form"  method="post" action="/post/add">
            <div class="form-group">
                <label class="form-label" for="rating">Оцінка:</label>
                <div class="rating-input">
                    @for(int i = 1; i <= 5; i++)
                        <label>
                            <input type="radio" name="rating" value="${i}" required>
                            <span class="star">★</span>
                        </label>
                    @endfor
                </div>
            </div>
            <div class="form-group">
                <label class="form-label" for="comment">Коментар:</label>
                <textarea class="form-textarea" name="comment" id="comment" required></textarea>
            </div>
            <button type="submit" class="submit-btn">Надіслати</button>
        </form>
    </div>

    <div class="container">
            <div class="reviews-stats">
                <div class="stat-item">
                    <div class="stat-number">${reviews.size()}</div>
                    <div class="stat-label">Всього відгуків</div>
                </div>
                @if(!reviews.isEmpty())
                    <div class="stat-item">
                        <div class="stat-number">${String.format("%.1f", reviews.stream().mapToInt(Review::getRating).average().orElse(0.0))}</div>
                        <div class="stat-label">Середня оцінка</div>
                    </div>
                @endif
            </div>
        <div class="sorting-buttons">
            <div class="sort-title">Сортування:</div>
            <div class="sort-options">
                <a href="/reviews/asc" class="sort-btn">За зростанням рейтингу</a>
                <a href="/reviews/desc" class="sort-btn">За спаданням рейтингу</a>
            </div>
        </div>



            <!-- Список відгуків -->
            <div class="reviews-list">
                @if(reviews.isEmpty())
                    <div class="no-reviews">
                        <div class="no-reviews-icon">💬</div>
                        <div class="no-reviews-text">Ще немає відгуків</div>
                        <div class="no-reviews-subtext">Станьте першим, хто залишить відгук про цей автомобіль!</div>
                    </div>
                @else
                    @for(Review review : reviews)
                        <div class="review-item">
                            <div class="review-header">
                                <div class="review-author">Користувач ${review.getUser().getUserName()}</div>
                                <div class="review-date">${review.getCreatedAt().format(java.time.format.DateTimeFormatter.ofPattern("dd.MM.yyyy HH:mm"))}</div>
                            </div>
                            <div class="review-rating">
                                @for(int i = 1; i <= 5; i++)
                                    @if(i <= review.getRating())
                                        <span class="review-star">★</span>
                                    @else
                                        <span class="review-star empty">★</span>
                                    @endif
                                @endfor
                            </div>
                            <div class="review-comment">${review.getComment()}</div>
                        </div>
                    @endfor
                @endif
            </div>

            <div class="action-buttons">
                <a href="/cars" class="btn btn-secondary">🏠 До каталогу</a>
            </div>
        </div>
    </body>
        <script>
            document.querySelector('review-form').addEventListener('submit', async function (e) {
            e.preventDefault();

            const rating = document.querySelector('input[name="rating"]:checked')?.value;
            const comment = document.getElementById('comment').value;

            if (!rating || !comment) {
            alert("Будь ласка, заповніть усі поля.");
            return;
        }

            const data = { rating, comment };
            const endpoint = '/post/add';

            const response = await fetch(endpoint, {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify(data)
        });

            if (response.ok) {
            alert('Відгук надіслано успішно!');
            location.reload(); // або перенаправити, якщо треба
        } else {
            alert('Не вдалося надіслати відгук.');
        }
        });
    </script>


    </html>