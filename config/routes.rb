Rails.application.routes.draw do
  resources :projects
  devise_for :users
  get :about,   controller: :pages
  get :faq,     controller: :pages
  get :home,    controller: :pages
  get :resume,  controller: :pages

  root 'pages#home'
end
