Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :chatrooms do 
    resources :messags
  end

  resources :chatrooms
end
