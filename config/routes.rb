MdmStandart::Application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'

  scope module: :web do
    root to: "welcome#index"

    resources :pages, only: [ :show ]
    resource :session, only: [ :new, :create, :destroy ]
    resources :questions, only: [ :new, :create ]
    resource :measure, only: [:new, :create]
    resources :news, only: [:show]

    namespace :admin do
      root to: "welcome#index"

      resources :menus
      resources :users
      resources :pages
      resources :news
      resources :measures
      resources :feedbacks
      resources :questions
    end
  end
end
