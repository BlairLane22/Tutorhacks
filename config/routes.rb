Rails.application.routes.draw do
  resources :students
  root to: 'home#index'

  devise_for :users, controllers: {
    registrations: 'registrations'
  }

  resources :tutors


  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
