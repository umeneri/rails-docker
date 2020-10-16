Rails.application.routes.draw do
  get 'registeration/register'
  get 'login/login'
  resources :users
  resources :memos

  post 'login/login'
end
