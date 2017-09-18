Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index', defaults: { format: 'html' }
  get "posts/:published_month" => 'posts#index', constraints: { :published_month => /[0-9]{4}-[0-9]{2}/ },  as: "posts_published_month"
  resources :posts, only: [:index, :show]
end
