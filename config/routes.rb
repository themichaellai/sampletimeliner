Sampletimeliner::Application.routes.draw do
  get "artist/show"

  devise_for :users

  resources :users

  resources :artists

  resources :songs do
    resources :samples
  end
  root to: "static_pages#home"


end
