Rails.application.routes.draw do
  get 'admin/index'
  get 'teacher/index'
  get 'portal/info'
  devise_for :school_logins
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
  get 'portal/new_class_subject', to: 'portal#new_class_subject'

  post 'create_class_subject', to: 'portal#create_class_subject'
  resources :school_logins
end
