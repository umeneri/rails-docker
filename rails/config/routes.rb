Rails.application.routes.draw do
  post 'registration/register'
  get 'login/login'
  resources :users do
    put :upload, on: :member
    get :image, on: :member
  end
  resources :memos

  post 'login/login'
end
