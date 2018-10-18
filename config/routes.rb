Rails.application.routes.draw do
  devise_for :users
  resources :todo_lists do
    resources :todo_items do
     member do
      patch :complete
     end
   end
 end
  root "todo_lists#index"
  get '/todo_listas' => 'todo_lists#indexlists'
  require 'sidekiq/web'
  require 'sidekiq/cron/web'
  mount Sidekiq::Web => '/sidekiq'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
