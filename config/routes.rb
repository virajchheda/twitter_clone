Rails.application.routes.draw do
  devise_for :users, :controllers =>{registrations: 'registrations'}
  resources :tweets do 
    member do 
      get :retweet
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "tweets#index"
  resources :comments, only: [:create, :new]
end
