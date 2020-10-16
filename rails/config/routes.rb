Rails.application.routes.draw do
  post 'registration/register'
  get 'login/login'
  resources :users
  resources :memos

  post 'login/login'
end
