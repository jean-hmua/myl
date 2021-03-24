Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end
  
  resources :song_texts, concerns: :paginatable

  get "/my_lyrs", to: "song_texts#user_song_texts", as:"user_song_texts"
end
