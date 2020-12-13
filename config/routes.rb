Rails.application.routes.draw do
  resources :projects, only: [:index] do
    resources :todos, only: [:create, :update]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
