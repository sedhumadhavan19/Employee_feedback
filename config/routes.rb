Rails.application.routes.draw do
  resources :employees
  namespace :visitors do
  	get :index
  end
  root :to => "visitors#index"
end
