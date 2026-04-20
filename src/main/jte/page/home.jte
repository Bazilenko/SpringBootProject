!{var date = java.time.LocalDate.now();}
@template.layout.header()
@template.layout.main(content = @`Вітаємо на головній сторінці нашого автосалону!
    <div class="date">Сьогодні ${date.toString()}</div>
`)
@template.layout.footer()

