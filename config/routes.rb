Rails.application.routes.draw do
  devise_for :employees
  get 'home/index'

  root to: "home#index"
  
end
