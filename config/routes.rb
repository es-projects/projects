Rails.application.routes.draw do
  resources :users
  resources :project_applications
  resources :advisors
  resources :students
  resources :projects
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
