Rails.application.routes.draw do

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
  resources :students
  resources :charges

  # resources :users do
  #   resources :tutors
  #   resources :students
  # end


  get 'home/index'
  get 'home/pricing'
  get 'home/about'
  get 'student/parent'
  get 'home/terms_of_service'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
