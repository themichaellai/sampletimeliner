Sampletimeliner::Application.routes.draw do
  devise_for :users

  resources :songs do
    resources :samples
  end
  root to: "static_pages#home"


end
