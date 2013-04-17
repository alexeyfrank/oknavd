MdmStandart::Application.routes.draw do

  get "settings/edit"

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
      resources :products
      resources :users
      resources :pages
      resources :news
      resources :measures
      resources :feedbacks
      resources :questions

      resource :settings, only: [:edit, :update]
    end
  end
end
