Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'songs#index'

  resources :artists 

    resources :songs do
    resources :charts, only: [:index, :new, :create, :destroy]
    end

end
