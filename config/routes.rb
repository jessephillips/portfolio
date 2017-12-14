Rails.application.routes.draw do
  devise_for :users
  
  namespace :admin do
    resources :projects, except: [ :show ]
  end
  
  get :about,   controller: :pages
  get :faq,     controller: :pages
  get :home,    controller: :pages
  get :resume,  controller: :pages
  
  resources :projects, only: [ :index, :show ]
  
  root 'pages#home'
end
