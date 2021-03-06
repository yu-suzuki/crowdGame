Rails.application.routes.draw do
  get 'user_behavior/click'

  get 'evaluation/index'
  get 'evaluation/new'

  get 'user_behavior/click'
  post 'evaluation/create'

  resources :tweet_insert

  get 'admin/user_list', to: 'admin#user_list'
  get 'admin/user_show', to: 'admin#user_show'

  get 'admin', to: 'admin#index'

  devise_for :users
  get 'home/index'

  post 'tweet_insert/store'

  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
