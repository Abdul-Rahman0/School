Rails.application.routes.draw do
  devise_for :teachers
  get 'admin/index'
  get 'teacher/index'
  get 'portal/info'
  devise_for :school_logins
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
  # get 'portal/new_class_subject', to: 'portal#new_class_subject'

  # post 'create_class_subject', to: 'class_names#class_names_path'
  resources :school_logins
  
  resources :class_names do
    resources :subjects
  end
  resources :teachers

  # devise_for :teachers, controllers: {
  #   registrations: 'teachers/registrations'
  # }
end
