Merone::Application.routes.draw do
  resources :entries, only: [:index, :create, :show]
  root 'entries#index'
end
