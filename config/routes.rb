Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'charts#index'

  resources :charts do
    resources :songs
  end

  resources :preformers do
  resources :songs 
  end
  
end
