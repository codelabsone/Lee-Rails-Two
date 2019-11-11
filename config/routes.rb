Rails.application.routes.draw do

  root "cars#index"

  resources :cars do
    resources :reviews
    resources :favorites
  end

  resources :users
  get 'signup' => 'users#new'

  resource :session

end
