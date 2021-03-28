Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users

  get '/my_lyrs' => "song_texts#user_song_texts", :as => :user_root
  
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end
  
  resources :song_texts, concerns: :paginatable

  get "/my_lyrs", to: "song_texts#user_song_texts", as:"user_song_texts"

  get "/profile/:id/", to: "pages#profile", as: "profile"
end
