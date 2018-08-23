Rails.application.routes.draw do
  resources :students

  authenticated :user, lambda {|u| u.rank == "Student"} do
    root to: "students#index"
  end

  authenticated :user, lambda {|u| u.rank == "Tutor"} do
    root to: "tutors#index"
  end

  unauthenticated :user do
    root to: "home#index"
  end

  devise_for :users, controllers: {
    registrations: 'registrations'
  }

  resources :tutors


  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
