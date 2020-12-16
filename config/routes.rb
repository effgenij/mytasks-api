Rails.application.routes.draw do
  resources :projects, defaults: { format: :json }, only: :index do
    resources :todos, only: :update
  end
  resources :todos, only: :create

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
