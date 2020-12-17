Rails.application.routes.draw do

   root to: "home#index"

   resources :ephemeries

   resources :categories
end
