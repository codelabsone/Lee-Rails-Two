Rails.application.routes.draw do

  root 'welcome#index'


  resources :cars do
    resources :reviews
    resources :favorites
  end
  get 'cars/filter/:scope' => "cars#index", as: :filtered_cars
  resources :users
  get 'signup' => 'users#new'
  get 'signin' => "sessions#new"
  resource :session

end
