Rails.application.routes.draw do
   # api
   concern :api_base do
    resources :contact, only: %i[ create ]
  end
  
  namespace :v1 do
    concerns :api_base
  end
end
