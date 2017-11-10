Rails.application.routes.draw do
  resources :employees
  namespace :visitors do
  	get :index
  end
  post 'FeedBack_Form', :to=>"visitors#feedback_form"
end
