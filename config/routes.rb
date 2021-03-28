Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/home', to: 'static_pages#index'
  get '/search' => 'static_pages#search'
  root 'static_pages#index'
end

