Sampletimeliner::Application.routes.draw do
  devise_for :users

  resources :songs do
  end
  root to: "static_pages#home"


end
