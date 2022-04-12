Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root to: 'posts#index'

  get 'privacy', to: 'static_pages#privacy'

  get 'now_time', to: 'static_pages#now_time'

end
