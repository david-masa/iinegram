Rails.application.routes.draw do
  devise_for :users,
  controllers:{registrations: 'registrations'}
  
  root 'posts#index'
  get '/users/:id', to: 'users#show', as: 'user'

  resources :posts, only: %i(new create index show) do
    resources :photos, only: %i(create)
  end
  # get'/posts/new',to: 'posts#new'
  # get'/posts', to:'posts#create'
  # post'/posts/:post_id/photos',to:'photos#create',as: 'post_photos'
  # 上のコードの別の書き方

end
