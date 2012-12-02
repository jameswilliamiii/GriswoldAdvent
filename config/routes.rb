GriswoldAdvent::Application.routes.draw do

  get "admin/index"

  root :to => 'daily_quotes#index'
  resources :daily_quotes, :except => [ :new ]
  get 'coming_soon' => 'daily_quotes#coming_soon', :as => :coming_soon
  
  post 'text_messages' => 'text_messages#create'
  get 'verifications/incoming_text' => 'verifications#incoming_text'
  
  get    'signin', to: 'sessions#new', as: 'signin'
  delete 'signout', to: 'sessions#destroy', as: 'signout'
  resources :sessions
  
  get 'admin' => 'admin#index', :as => :admin
  
end
