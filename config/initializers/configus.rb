#encoding: utf-8
Configus.build Rails.env do

  env :production do
    pages_hash = {
        main: 'Главная страница',
        product: 'Окна и двери',
        services: 'Услуги и сервис',
        advantages: 'Наши преимущества',
        company: 'Компания',
        offices: 'Где купить',
        contacts: 'Контакты',
        :'client-feedbacks' => 'Отзывы заказчиков'
    }
    pages pages_hash.to_a
  end

  env :development, parent: :production do

  end

  env :test, parent: :production do

  end

end