Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [:new, :create, :destroy, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
