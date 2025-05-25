<style>
.hero-section {
 margin-bottom: 40px;
}

.hero-container {
    position: relative;
    width: 100%;
    height: 600px;;
    overflow: hidden;
    border-radius: 12px;
    box-shadow: 0 4px 20px rgba(0,0,0,0.1);
}

.hero-image {
width: 100%;
height: 100%;
object-fit: cover;
display: block;
border-radius: 12px;
}

.hero-overlay {
position: absolute;
top: 0;
left: 0;
width: 100%;
height: 100%;
color: white;
background: rgba(0, 0, 0, 0.4);
display: flex;
flex-direction: column;
justify-content: center;

padding: 20px;
text-align: center;
}

.hero-overlay h1 {
font-size: 2.5rem;
margin-bottom: 10px;
}

.hero-overlay p {
font-size: 1.2rem;
}
</style>
!{var date = java.time.LocalDate.now();}
@template.layout.header()
@template.layout.main(content = @`
        <div class="hero-container">
            <img src='/images/cars/autosalon.jpg' alt="Автосалон" class="hero-image">
            <div class="hero-overlay">
                <h1>Ласкаво просимо до Автосалону Преміум</h1>
                <p>Сьогодні ${date.toString()}</p>
                <p>Ваш шлях до мрії на чотирьох колесах починається тут</p>
            </div>
        </div>

`)
@template.layout.footer()

